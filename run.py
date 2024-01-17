import subprocess
import time
import platform
import psutil
import json
from pathlib import Path
import shutil

configfile = "autobuild.json"
with open((configfile), 'r', 2048, "utf-8") as f:
    data = json.load(f)
    obs_json_path = data.get("obsidian_template_config", 'obsidian-template-config.json')
    vault_id = data.get("obsidian_vault_id", None)
    vault_root_path = data.get("obsidian_vault_root", "taelgar")
    export_script = data.get("export_script", 'taelgarverse-site-generator/scripts/export_vault.py')

target_data_path = Path(vault_root_path, '.obsidian', 'plugins', 'templater-obsidian', 'data.json')  # Replace with the target path

shutil.copy(target_data_path, "templaterback.json")
shutil.copy(obs_json_path, target_data_path)

url_or_file_to_open = 'obsidian://open?vault=' + vault_id
if platform.system() == 'Darwin':  # Checking if the system is macOS
    subprocess.Popen(['open', url_or_file_to_open])
    obs_proc_name = "obisdian"
else:
    subprocess.Popen(['start', '', url_or_file_to_open], shell=True)
    obs_proc_name = "obsidian.exe"

# Step 2: Wait for the default application to exit
while True:
    try:
        # Check if the process is still running
        if not any(p.name().lower() == obs_proc_name for p in psutil.process_iter(['name'])):
            # The default application has exited
            break
        else:
            time.sleep(1)  # Wait for 1 second before checking again
    except KeyboardInterrupt:
        # Handle keyboard interrupt (Ctrl+C) to exit the script
        break


# Step 3: Run another Python script (export_vault.py)
subprocess.run(['python', export_script])

shutil.move("templaterback.json", target_data_path)