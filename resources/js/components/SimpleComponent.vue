<template>
  <div class="simple">
    <div id="top_div" style="height: 100%">
      <p>Test</p>
    </div>
  </div>
</template>

<script>

import Vue2Leaflet from 'vue2-leaflet';

export default {
  name: 'simple',
  components: {
    'v-map': Vue2Leaflet.Map,
    'v-tilelayer' :Vue2Leaflet.TileLayer,
    'v-marker': Vue2Leaflet.Marker
  },
  data () {
    return {
        zoom: 13,
        center: [47.413220, -1.219482],
        url: 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
        attribution: '&copy; <a href="http://{s}.google.com/vt?lyrs=s&x={x}&y={y}&z={z}',
        marker: L.latLng(47.413220, -1.219482),
    }
  }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>