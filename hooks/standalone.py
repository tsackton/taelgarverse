"""Publish the standalone Taelgar II page without MkDocs theme processing."""

from pathlib import Path
import shutil

from mkdocs.exceptions import PluginError


SOURCE_DIR = Path(__file__).resolve().parent.parent / "standalone" / "taelgar-2"
DESTINATION = "taelgar-2"


def on_files(files, config):
    """Reserve this output directory so a generated page cannot be overwritten."""
    if not (SOURCE_DIR / "index.html").is_file():
        raise PluginError(f"Standalone page is missing: {SOURCE_DIR / 'index.html'}")
    for file in files:
        if file.dest_uri == DESTINATION or file.dest_uri.startswith(f"{DESTINATION}/"):
            raise PluginError(f"MkDocs output conflicts with standalone page: {file.src_uri}")
    return files


def on_post_build(config):
    """Copy the approved document and images after nav, search, and sitemap generation."""
    destination = Path(config["site_dir"]) / DESTINATION
    if destination.exists():
        # Clean only our reserved output, including during incremental local builds.
        shutil.rmtree(destination)
    shutil.copytree(SOURCE_DIR, destination)
