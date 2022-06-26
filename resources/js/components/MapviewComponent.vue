<template>
  <section class="content" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-12" >
                    <v-map :zoom="zoom" :center="center" style="height: 80vh; width: 100%; position: relative;  solid black; ">       
                      <v-tilelayer-googlemutant :apikey="apikey" :options="options"></v-tilelayer-googlemutant>
                      <v-marker v-for="household in households" :key="household.controlnumber" :lat-lng="coordinates(household.latitude, household.longitude)" :icon="icon" @click="opensidebar(household.controlnumber)"></v-marker>       
                    </v-map>     
                </div>         
            </div>
        </div>
    </section>
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
        household: {}
    }
    
  },
  methods: {
      gethouseholds: function(){
          axios.get('/household/vue')
                .then((response)=>{
                  this.households = response.data;
                })
                .catch(function(error){
                  console.log(error);
                });
      },
      coordinates: function(lat,long){
        return L.latLng(lat,long);
      },
      opensidebar: function (controlnumber){
        this.household = this.households.filter(cn => cn.controlnumber == controlnumber);
      }
  },
    created() {
        this.gethouseholds()
    }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>