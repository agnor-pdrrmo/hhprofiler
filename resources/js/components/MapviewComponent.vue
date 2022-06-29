<template>
  <section class="content" >
        <div class="container-fluid" >
            <div class="row">
                <div class="col-12" >
                    <v-map ref="map" :zoom="zoom" :center="centerMarker" :style="setStyle" style="height: 80vh; position: relative;  solid black; ">       
                      <v-tilelayer-googlemutant :apikey="apikey" :options="options"></v-tilelayer-googlemutant>
                      <v-marker v-for="(household,i) in households" :key="i" :lat-lng="coordinates(household.latitude, household.longitude)" :icon="icon" @click="opensidebar(household.controlnumber)"></v-marker>       
                    </v-map>     
                </div>         
            </div>
        </div>

        <aside id="toogleinformation" class="control-sidebar overflow-auto control-sidebar-light" style="width: 35% !important;">
            <!-- Control sidebar content goes here -->        
            <div class="p-3">
               <div class="card card-primary card-outline card-outline-tabs">
                    <div class="card-header p-0 border-bottom-0">
                      <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
                        <li class="nav-item">
                          <a class="nav-link active" id="custom-tabs-four-household-information-tab" data-toggle="pill" href="#custom-tabs-four-household-information" role="tab" aria-controls="custom-tabs-four-household-information" aria-selected="true">Household information</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="custom-tabs-four-demography-tab" data-toggle="pill" href="#custom-tabs-four-demography" role="tab" aria-controls="custom-tabs-four-demography" aria-selected="false">Demography</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="custom-tabs-four-availed-programs-tab" data-toggle="pill" href="#custom-tabs-four-availed-programs" role="tab" aria-controls="custom-tabs-four-availed-programs" aria-selected="false">Availed programs</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="custom-tabs-four-livelihood-tab" data-toggle="pill" href="#custom-tabs-four-livelihood" role="tab" aria-controls="custom-tabs-four-livelihood" aria-selected="false">Livelihood</a>
                        </li>
                      </ul>
                    </div>
                    <div class="card-body">
                      <div class="tab-content" id="custom-tabs-four-tabContent">
                        <div class="tab-pane fade show active" id="custom-tabs-four-household-information" role="tabpanel" aria-labelledby="custom-tabs-four-household-information-tab">
                          <!-- Form household component -->
                          <household-form-component  v-bind:householdData="householdInfo" ref="childThing" :submit="'Update'"></household-form-component>                   
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-demography" role="tabpanel" aria-labelledby="custom-tabs-four-demography-tab">
                          <!-- Foldable list of demography component -->      
                          <demography-component v-bind:demographies="setDemographies" ></demography-component>                     
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-availed-programs" role="tabpanel" aria-labelledby="custom-tabs-four-availed-programs-tab">
                          <!-- Foldable list of availed programs -->
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-livelihood" role="tabpanel" aria-labelledby="custom-tabs-four-livelihood-tab">
                          <!-- Foldable list of livelihood -->
                        </div>
                      </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </aside>
    </section>
</template>

<script>

import { LMap, LTileLayer, LMarker }  from 'vue2-leaflet';
import Vue2LeafletGoogleMutant from 'vue2-leaflet-googlemutant';
import $ from 'jquery';

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
        household: {},
        demographies: [],
        style:{
          width: '100%',
        }
    }
    
  },
  methods: {
      gethouseholds: function(){
          axios.get('/household')
                .then((response)=>{
                   //console.log(response.data);
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
        this.demographies = this.household[0].demography;

        // Update center of the map
        [this.center] = this.household.map(h => { return [h.latitude, h.longitude] })

        // Call invalidateSize to update map size
        this.$refs.map.mapObject.invalidateSize();

        //Set width of the map 
        this.style = {width: '65%'}; 

        //Call toggle to show sidebar
        $("#my-toggle-button").ControlSidebar('show');
      }
  },
  computed:{
    householdInfo: {
      get(){
        return this.household;  
      },
      set(val){
        this.household = val;
      }
    },
    setDemographies:{
      get(){
        return this.demographies;
      },
      set(val){
        this.demographies = val;
      }
    },
    centerMarker:{
      get(){
        return this.center;
      },
      set(val){
        this.center = val;
      }
    },
    setStyle: {
      get(){
        return this.style;
      },
      set(val){
        this.style = val;
      }
    }  
  },
  mounted(){
    Event.$on('mapInvalidate',() =>{
      if($('#toogleinformation:visible').length == 0){
          // Call invalidateSize to update map size
          this.$refs.map.mapObject.invalidateSize();
          //Set width of the map 
          this.style = {width: '65%'}; 
        }else{
          // Call invalidateSize to update map size
          this.$refs.map.mapObject.invalidateSize();
          //Set width of the map 
          this.style = {width: '100%'}; 
        }
        
    })
  },
  created() {
      this.gethouseholds();   
  }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>