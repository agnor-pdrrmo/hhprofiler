<template>
  <div id="myGroup">   
          <ul>
            <li v-for="program in programs" :key="program.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#program-' + program.id" aria-expanded="false" aria-controls="collapseExample">
                  {{program.surname}} {{program.firstname}} {{program.middlename}}
              </a>
              <div class="collapse" :id="'program-' + program.id" data-parent="#myGroup">
                  <program-form-component :program="program" :submit="'Update'"></program-form-component>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

import $ from 'jquery';

export default {
  props : ['programs'],
  data(){
     return{
      
     }
  }
}
</script>
