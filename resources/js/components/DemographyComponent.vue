<template>
  <div id="myGroup">   
          <ol v-if="demographies.length === 0" class="list-unstyled">
            <li>
              <p> No Member of the family</p>
            </li>  
          </ol>
          <ol v-else>
            <li v-if="demographies" v-for="demography in demographies" :key="demography.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#demography-' + demography.id" aria-expanded="false" aria-controls="collapseExample">
                  {{demography.surname}} {{demography.firstname}} {{demography.middlename}}
              </a>
              <div class="collapse" :id="'demography-' + demography.id" data-parent="#myGroup">
                  <demography-form-component :demography="demography" :submit="'Update'"></demography-form-component>
              </div>
            </li>    
          </ol>  
  </div>  
</template>
<script>

export default {
  props : ['demographies'],
}
</script>
