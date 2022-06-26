<template>
  <div class="simple">
    <div style="height: 100%">
      <v-map :zoom="zoom" :center="center" style="height: 80vh; width: 100%; position: relative;  solid black; ">       
        <v-tilelayer-googlemutant :apikey="apikey" :options="options"></v-tilelayer-googlemutant>
        <v-marker v-for="household in households" :key="household.controlnumber" :lat-lng="setcoordinates(household.latitude, household.longitude)" :icon="icon"></v-marker>       
      </v-map>     
    </div>
  </div>
</template>

<script>

import { LMap, LTileLayer, LMarker }  from 'vue2-leaflet';
import Vue2LeafletGoogleMutant from 'vue2-leaflet-googlemutant'

export default {
   components: {
    'v-map': LMap,
    'v-tilelayer' :LTileLayer,
    'v-marker': LMarker,
    'v-tilelayer-googlemutant': Vue2LeafletGoogleMutant
  },
  data () {
    let options = {
        type: 'satellite'
    }
    return {
        options,
        center: [9.112161, 125.560837],
        zoom: 10,
        apikey : 'AIzaSyB2MmppHGfdrSzVXgDSPWVmOUVH-rwkI6M',
        marker: L.latLng(9.112161, 125.560837),
        icon: L.icon({
          iconUrl: 'images/icons8-red-circle-48.png',
          iconSize:     [16, 16],
          iconAnchor:   [16, 16]
        }),
        households: {},   
    }
    
  },
  methods: {
      getHouseholds(){
          axios.get('/household/vue')
                .then((response)=>{
                  this.households = response.data;
                })
                .catch(function(error){
                  console.log(error);
                });
      },
      setcoordinates(lat,long){
        return L.latLng(lat,long);
      }        
  },
    created() {
        this.getHouseholds()
    }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>