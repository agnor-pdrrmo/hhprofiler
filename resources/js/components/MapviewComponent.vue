<template>
  <section class="content">
        <div class="container-fluid" >
            <div class="row">
                <div class="col-12" >
                    <v-map @moveend="moveEnd" ref="map" :zoom="zoom" :center="centerMarker" :style="setStyle" style="height: 80vh; position: relative;  solid black; ">       
                      <v-tilelayer-googlemutant :apikey="apikey" :options="options"></v-tilelayer-googlemutant>
                      <v-marker v-for="(household,i) in households" :key="i" :lat-lng="coordinates(household.latitude, household.longitude)" :visible="checkCurrentMarker(household.latitude, household.longitude)" :icon="(household.icon) ? household.icon : defaultIcon" @click="opensidebar(household.controlnumber,household)"></v-marker>       
                    </v-map>     
                </div>         
            </div>
        </div>
        <aside v-if="!advanceSearch" id="toogleinformation" class="control-sidebar overflow-auto control-sidebar-dark" style="width: 35% !important;">
            <!-- Control sidebar content goes here -->        
            <div class="p-3" >
               <div class="card card-primary card-outline card-outline-tabs" style="background-color: #343a40;">
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
                          <household-component v-bind:householdData="householdInfo"></household-component>                   
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-demography" role="tabpanel" aria-labelledby="custom-tabs-four-demography-tab">
                          <!-- Foldable list of demography component -->      
                          <demography-component v-bind:demographies="setDemographies" ></demography-component>                     
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-availed-programs" role="tabpanel" aria-labelledby="custom-tabs-four-availed-programs-tab">
                          <!-- Foldable list of availed programs -->
                          <availedprogram-component v-bind:availedprograms="setAvailprograms"></availedprogram-component>
                        </div>
                        <div class="tab-pane fade" id="custom-tabs-four-livelihood" role="tabpanel" aria-labelledby="custom-tabs-four-livelihood-tab">
                          <!-- Foldable list of livelihood -->
                          <livelihood-component v-bind:livelihoods="setLivelihoods"></livelihood-component>
                        </div>
                      </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </aside>
        <aside v-else id="toogleMultipleSearch" class="control-sidebar overflow-auto control-sidebar-dark" style="width: 20% !important;">
          <div class="p3" style="padding: 35px;height: 100%;width: 100%;">
              <h5>Filters</h5>
              <hr class="mb-2">
              <lib-municipality v-bind:municipalities="municipalities" v-bind:barangays="barangays" v-bind:selected="selected"></lib-municipality>
              <lib-typeofbuilding v-bind:hhtypeofbuildings="hhtypeofbuildings" v-bind:selected="selected"></lib-typeofbuilding>
              <lib-hhtenuralstatus v-bind:hhtenuralstatus="hhtenuralstatus" v-bind:selected="selected"></lib-hhtenuralstatus>
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
        inBoundingbox: false,
        inBounds: null,
        neCorner: null,
        swCorner: null,
        defaultIcon: L.icon({
          iconUrl: 'images/icons8-green-circle-48.png',
          iconSize:     [16, 16],
          iconAnchor:   [16, 16]
        }),
        households: [],
        household:{},
        demographies: [],
        availedprograms: [],
        livelihoods: [],
        //Library
        municipalities: [],
        barangays: [],
        hhtypeofbuildings: [],
        hhtenuralstatus: [],
        //For searching
        selected: {
          households: [],
          municipalities: [],
          barangays: [],
          hhtypeofbuildings: [],
          hhtenuralstatus: []
        },
        style:{
          width: '100%',
        },
        selectedIcon: L.icon({
          iconUrl: 'images/icons8-red-circle-48.png',
          iconSize:     [16, 16],
          iconAnchor:   [16, 16]
        }),
        showModal : false,
        advanceSearchtoggle : false
    }
    
  },
  methods: {
      moveEnd: function(){
        var getBounds = this.$refs.map.mapObject.getBounds();
        this.swCorner = getBounds._southWest;  
        this.neCorner = getBounds._northEast;
        
      },
      checkCurrentMarker: function(lat,long){  
        var currentMarker = L.marker([lat, long]) 
        var featureGroup = L.FeatureGroup = [this.swCorner,this.neCorner];
        this.inBoundingbox = ( L.latLngBounds(featureGroup).contains(currentMarker.getLatLng()) ) ? true : false;
      },
      loadHouseholds: function(){
          axios.get('/api/households',{
            params: _.omit(this.selected, 'households')
          })
                .then((response)=>{

                   this.households = response.data;

                   (response.data.length != 0) 
                    ? this.$refs.map.mapObject.fitBounds(this.households.map(h => { return [h.latitude, h.longitude] })) 
                    //To do ask sir rodiel bounding box of agusan del norte
                    : '';

                })
                .catch(function(error){
                  console.log(error);
                });
      },
      coordinates: function(lat,long){
        return L.latLng(lat,long);
      },
      opensidebar: function (controlnumber,hhold){

        //Setting data to display in control sidebar
        this.household = this.households.filter(cn => cn.controlnumber == controlnumber);
        this.demographies = this.household[0].demography;
        this.availedprograms = this.household[0].availedprograms;
        this.livelihoods = this.household[0].livelihoods;

        // Update center of the map
        [this.center] = this.household.map(h => { return [h.latitude, h.longitude] })

        // Call invalidateSize to update map size
        this.$refs.map.mapObject.invalidateSize();

        //Set width of the map 
        this.style = {width: '65%'}; 

        //Change icon to green
        if (this.currentHousehold) {
          this.currentHousehold.icon = this.defaultIcon;
        }
        //Change icon to red
        this.currentHousehold = hhold
        this.currentHousehold.icon = this.selectedIcon;

        //Call toggle to show sidebar
        this.advanceSearch = false;
        $("#my-toggle-button").ControlSidebar('show');
      },
      loadMunicipality: function () {
        axios.get('/api/municipalities', {
            params: _.omit(this.selected, 'municipalities')
        })
        .then((response) => {
            this.municipalities = response.data.data;
        })
        .catch(function (error) {
            console.log(error);
        });
      }, 
      loadBarangays: function () {
        axios.get('/api/barangays', {
            params: _.omit(this.selected, 'barangays')
        })
        .then((response) => {
            this.barangays = response.data.data;
        })
        .catch(function (error) {
            console.log(error);
        });
      }, 
      loadTypeofbuilding: function () {
        axios.get('/api/hhtypeofbuildings', {
            params: _.omit(this.selected, 'hhtypeofbuildings')
        })
        .then((response) => {
            this.hhtypeofbuildings = response.data.data;
        })
        .catch(function (error) {
            console.log(error);
        });
      },
      loadHhtenuralstatus: function () {
        axios.get('/api/hhtenuralstatus', {
            params: _.omit(this.selected, 'hhtenuralstatus')
        })
        .then((response) => {
            this.hhtenuralstatus = response.data.data;
        })
        .catch(function (error) {
            console.log(error);
        });
      }, 
  },
  watch: {
      selected: {
          handler: function () {
              this.loadMunicipality();
              this.loadBarangays();
              this.loadTypeofbuilding();
              this.loadHouseholds();
              this.loadHhtenuralstatus();
          },
          deep: true
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
    setAvailprograms:{
      get(){
        return this.availedprograms;
      },
      set(val){
        this.availedprograms = val;
      }
    },
    setLivelihoods:{
      get(){
        return this.livelihoods;
      },
      set(val){
        this.livelihoods = val;
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
    },
    setInboundingbox:{
      get(){
        return this.inBoundingbox;
      },
      set(val){
        this.inBoundingbox = val;
      }
    },
    advanceSearch:{
      get(){
        return this.advanceSearchtoggle;
      },
      set(val){
        this.advanceSearchtoggle = val;
      }
    }
  },
  mounted(){
    Event.$on('mapInvalidate',() =>{
       this.advanceSearchtoggle =  false;
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
    });
    Event.$on('openSearchControl',()=>{
      //this.showModal = true;
       this.advanceSearchtoggle =   true;
       if($('#toogleMultipleSearch:visible').length == 0){
          // Call invalidateSize to update map size
          this.$refs.map.mapObject.invalidateSize();
          //Set width of the map 
          this.style = {width: '80%'}; 
        }else{
          // Call invalidateSize to update map size
          this.$refs.map.mapObject.invalidateSize();
          //Set width of the map 
          this.style = {width: '100%'}; 
        }

    });
    //Call preloaded library with cout pivot table
    this.loadMunicipality();
    this.loadBarangays();
    this.loadTypeofbuilding();
    this.loadHouseholds();
    this.loadHhtenuralstatus();
  }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>