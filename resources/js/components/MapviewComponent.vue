<template>
  <section class="content" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-12" >
                    <v-map ref="map" :zoom="zoom" :center="center"  style="height: 80vh; width: 100%; position: relative;  solid black; ">       
                      <v-tilelayer-googlemutant :apikey="apikey" :options="options"></v-tilelayer-googlemutant>
                      <v-marker v-for="(household,i) in households" :key="i" :lat-lng="coordinates(household.latitude, household.longitude)" :icon="icon" @click="opensidebar(household.controlnumber)"></v-marker>       
                    </v-map>     
                </div>         
            </div>
        </div>
        <aside class="control-sidebar overflow-auto control-sidebar-dark" style="width: 18% !important;">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
            <h5>household Information</h5>
            <form-household  v-bind:householdData="householdInfo" ref="childThing"></form-household>
            </div>
        </aside>
    </section>
</template>

<script>

import { LMap, LTileLayer, LMarker }  from 'vue2-leaflet';
import Vue2LeafletGoogleMutant from 'vue2-leaflet-googlemutant';
import $ from 'jquery'
import HousholdForm from './HouseholdformComponent.vue';

export default {
  components: {
    'v-map': LMap,
    'v-tilelayer' :LTileLayer,
    'v-marker': LMarker,
    'v-tilelayer-googlemutant': Vue2LeafletGoogleMutant,
    'form-household': HousholdForm,
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
        household: {},
        test: 'initialValue',
        bus: new Vue(),
    }
    
  },
  methods: {
      gethouseholds: function(){
          axios.get('/household')
                .then((response)=>{
                   this.households = response.data;
                   this.$refs.map.mapObject.fitBounds(this.households.map(h => { return [h.latitude, h.longitude] }));
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
        this.$refs.childThing.updateHousehold(this.household);
        $("#my-toggle-button").ControlSidebar('show');
      }
  },
  computed:{
    householdInfo: function() {
      return this.household;
      console.log(this.household);
    },
    updateTest: function(){
      return this.test = "Updated";
    }
  },
  created() {
      this.gethouseholds();   
  }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>