<template>
  <section class="content">
        <loading 
            :active='showLoading'
            :is-full-page="true"
            :loader='bars'
            :height= '128'
            :width= '128'
            >
        </loading>
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
              <lib-hhroofmaterials v-bind:hhroofmaterials="hhroofmaterials" v-bind:selected="selected"></lib-hhroofmaterials>
              <lib-accesstoelectricity v-bind:hasElectricity="hasElectricity" v-bind:noElectricity="noElectricity" v-bind:selected="selected"></lib-accesstoelectricity>
              <lib-accesstointernet v-bind:hasInternet="hasInternet" v-bind:noInternet="noInternet" v-bind:selected="selected"></lib-accesstointernet>
              <lib-accesswatersupply v-bind:hasAccesswatersupply="hasAccesswatersupply" v-bind:noAccesswatersupply="noAccesswatersupply" v-bind:selected="selected"></lib-accesswatersupply>
              <lib-potable v-bind:ispotable="ispotable" v-bind:notpotable="notpotable" v-bind:selected="selected"></lib-potable>
              <lib-hhwatertenuralstatus v-bind:hhwatertenuralstatus="hhwatertenuralstatus" v-bind:selected="selected"></lib-hhwatertenuralstatus>
              <lib-libhhlvlwatersystems v-bind:libhhlvlwatersystems="libhhlvlwatersystems" v-bind:selected="selected"></lib-libhhlvlwatersystems>
          </div>
        </aside>
    </section>
</template>

<script>

import { LMap, LTileLayer, LMarker }  from 'vue2-leaflet';
import Vue2LeafletGoogleMutant from 'vue2-leaflet-googlemutant';
import Loading from 'vue-loading-overlay';
import 'vue-loading-overlay/dist/vue-loading.css';
import $ from 'jquery';

export default {
  components: {
    'v-map': LMap,
    'v-tilelayer' :LTileLayer,
    'v-marker': LMarker,
    'v-tilelayer-googlemutant': Vue2LeafletGoogleMutant,
    Loading
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
        hhroofmaterials: [],
        hhwatertenuralstatus: [],
        libhhlvlwatersystems: [],
        hasElectricity: [],
        noElectricity: [],
        hasInternet: [],
        noInternet: [],
        hasAccesswatersupply: [],
        noAccesswatersupply: [],
        ispotable: [],
        notpotable: [],
        //For searching
        selected: {
          households: [],
          municipalities: [],
          barangays: [],
          hhtypeofbuildings: [],
          hhtenuralstatus: [],
          hhroofmaterials: [],
          accesstoelectricity: [],
          accesstointernet: [],
          accesswatersupply: [],
          potable: [],
          hhwatertenuralstatus: [],
          libhhlvlwatersystems: []
        },
        style:{
          width: '100%',
        },
        selectedIcon: L.icon({
          iconUrl: 'images/icons8-red-circle-48.png',
          iconSize:     [16, 16],
          iconAnchor:   [16, 16]
        }),
        advanceSearchtoggle : false,
        isLoading: false,
        fullPage: true,
        bars: 'bars'
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
          this.isLoading = true;
          axios.get('/api/households',{
            params: _.omit(this.selected, 'households')
          })
                .then((response)=>{

                   this.households = response.data.household;
                   this.hasElectricity = {'access': 'Yes','id':1,'households_count': response.data.has_access_electricity_count};
                   this.noElectricity = {'access': 'No','id':0,'households_count': response.data.no_access_electricity_count};
                   this.hasInternet = {'access': 'Yes','id':1,'households_count': response.data.has_access_internet_count};
                   this.noInternet = {'access': 'No','id':0,'households_count': response.data.no_access_internet_count};
                   this.hasAccesswatersupply = {'access': 'Yes','id':1,'households_count': response.data.has_accesswatersupply_count};
                   this.noAccesswatersupply = {'access': 'No','id':0,'households_count': response.data.no_accesswatersupply_count};
                   this.ispotable = {'access': 'Yes','id':1,'households_count': response.data.is_potable_count};
                   this.notpotable = {'access': 'No','id':0,'households_count': response.data.not_potable_count};

                   (response.data.length != 0) 
                    ? this.$refs.map.mapObject.fitBounds(this.households.map(h => { return [h.latitude, h.longitude] })) 
                    //To do ask sir rodiel bounding box of agusan del norte
                    : '';

                   this.isLoading = false;

                })
                .catch(function(error){
                  console.log(error);
                  this.isLoading = false;
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
        this.isLoading = true;
        axios.get('/api/municipalities', {
            params: _.omit(this.selected, 'municipalities')
        })
        .then((response) => {
            this.municipalities = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      }, 
      loadBarangays: function () {
        this.isLoading = true;
        axios.get('/api/barangays', {
            params: _.omit(this.selected, 'barangays')
        })
        .then((response) => {
            this.barangays = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      }, 
      loadTypeofbuilding: function () {
        this.isLoading = true;
        axios.get('/api/hhtypeofbuildings', {
            params: _.omit(this.selected, 'hhtypeofbuildings')
        })
        .then((response) => {
            this.hhtypeofbuildings = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      },
      loadHhtenuralstatus: function () {
        this.isLoading = true;
        axios.get('/api/hhtenuralstatus', {
            params: _.omit(this.selected, 'hhtenuralstatus')
        })
        .then((response) => {
            this.hhtenuralstatus = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
        });
      },
      loadHhroofmaterials: function () {
        this.isLoading = true;
        axios.get('/api/hhroofmaterials', {
            params: _.omit(this.selected, 'hhroofmaterials')
        })
        .then((response) => {
            this.hhroofmaterials = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      },
      loadHhwatertenuralstatus: function () {
        this.isLoading = true;
        axios.get('/api/hhwatertenuralstatus', {
            params: _.omit(this.selected, 'hhwatertenuralstatus')
        })
        .then((response) => {
            this.hhwatertenuralstatus = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      },
      loadLibhhlvlwatersystems: function () {
        this.isLoading = true;
        axios.get('/api/libhhlvlwatersystems', {
            params: _.omit(this.selected, 'libhhlvlwatersystems')
        })
        .then((response) => {
            this.libhhlvlwatersystems = response.data.data;
            this.isLoading = false;
        })
        .catch(function (error) {
            console.log(error);
            this.isLoading = false;
        });
      }
  },
  watch: {
      selected: {
          handler: function () {
              this.loadHouseholds();
              this.loadMunicipality();
              this.loadBarangays();
              this.loadTypeofbuilding();
              this.loadHhtenuralstatus();
              this.loadHhroofmaterials();
              this.loadHhwatertenuralstatus();
              this.loadLibhhlvlwatersystems();
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
    },
    showLoading:{
      get(){
        return this.isLoading;
      },
      set(val){
        this.isLoading = val;
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
    this.loadHhroofmaterials();
    this.loadHhwatertenuralstatus();
    this.loadLibhhlvlwatersystems();
  }
}
</script>

<style>
 @import "~leaflet/dist/leaflet.css";
</style>