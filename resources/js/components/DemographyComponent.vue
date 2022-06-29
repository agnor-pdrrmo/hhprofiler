<template>
  <div id="myGroup">   
          <ul>
            <li v-for="demography in demographies" :key="demography.id">
              <span :class="" ></span>
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#school-' + demography.id" aria-expanded="false" aria-controls="collapseExample">
                  {{demography.surname}} {{demography.firstname}} {{demography.middlename}}
              </a>
              <div class="collapse" :id="'school-' + demography.id" data-parent="#myGroup">
                  <demography-form-component :demography="demography" :submit="'Update'"></demography-form-component>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

import $ from 'jquery';

export default {
  props : ['demographies'],
  data(){
     return{
      
     }
  }
}
</script>
