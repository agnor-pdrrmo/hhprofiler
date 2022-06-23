<template>
  <div class="simple">
    <div id="top_div" style="height: 100%">
      <v-map :zoom="zoom" :center="center" style="height: 1000px; width: 1000px">
        <v-tilelayer :url="url" :attribution="attribution"></v-tilelayer>
        <v-marker :lat-lng="marker"></v-marker>       
      </v-map>
    </div>
  </div>
</template>

<script>

import { LMap, LTileLayer, LMarker }  from 'vue2-leaflet';

export default {
  name: 'simple',
   components: {
    'v-map': LMap,
    'v-tilelayer' :LTileLayer,
    'v-marker': LMarker
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