<template>
  <div id="myGroup">   
          <ul class="list-unstyled">
            <li v-for="demography in demographies" :key="demography.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#demography-' + demography.id" aria-expanded="false" aria-controls="collapseExample">
                  {{demography.surname}} {{demography.firstname}} {{demography.middlename}}
              </a>
              <div class="collapse" :id="'demography-' + demography.id" data-parent="#myGroup">
                  <demography-form-component :demography="demography" :submit="'Update'"></demography-form-component>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

export default {
  props : ['demographies'],
}
</script>
