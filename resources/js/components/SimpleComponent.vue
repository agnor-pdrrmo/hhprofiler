<template>
  <div class="simple">
    <div id="top_div" style="height: 100%">
      <navitem />
    </div>
  </div>
</template>

<script>

import navitem from './nav-item-component';

export default {
  name: 'simple',
   components: {
     'navitem':navitem,
    //  'v-tilelayer':v-tilelayer,
    //  'v-marker':v-marker
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