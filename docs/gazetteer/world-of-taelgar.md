---
headerVersion: 2023.11.25
tags: [background]
hide: [toc, navigation]
name: Map of Taelgar
dm_notes: none
dm_owner: tim
title: Map of Taelgar
---
# Map of Taelgar

<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="" ></script>


<div id="world-of-taelgar" class="ext-map-container"></div>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {

            var map = L.map('world-of-taelgar', {
                crs: L.CRS.Simple,
                minZoom: -2,
                maxZoom: 2
            });

            
            // this bounds must be in the form [y,x], [y,x]
            // it will typically be, in the yaml, 
            // bounds:
            //  - [0,0]
            //  - [100,100]

            var bounds = [[0, 0], [5156.7, 6636.233]];
            var imageBounds = L.latLngBounds(bounds);

            var tileBaseUrl = '/taelgarverse/assets/tiles/taelgar-world-map';
var blankTile = 'data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==';
var TaelgarTileLayer = L.TileLayer.extend({
    getTileUrl: function (coords) {
        var row = coords.y + 11;
        var col = coords.x;
        if (col < 0 || col >= 13 || row < 0 || row >= 11) {
            return blankTile;
        }
        return tileBaseUrl + '/' + coords.z + '/' + col + '/' + row + '.webp';
    }
});
var tiles = new TaelgarTileLayer('', {
    tileSize: 512,
    minZoom: map.getMinZoom(),
    maxZoom: map.getMaxZoom(),
    minNativeZoom: 0,
    maxNativeZoom: 0,
    noWrap: true,
    bounds: imageBounds
}).addTo(map);
map.setMaxBounds(imageBounds.pad(0.05));
            map.setView( [3333, 2000], -1);
        })
</script>

