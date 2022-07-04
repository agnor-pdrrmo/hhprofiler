<template>
  <div id="myGroup">   
          <ul class="list-unstyled">
            <li v-for="livelihood in livelihoods" :key="livelihood.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#livelihood-' + livelihood.id" aria-expanded="false" aria-controls="collapseExample">
                  {{livelihood.surname}} {{livelihood.firstname}} {{livelihood.middlename}}
              </a>
              <div class="collapse" :id="'livelihood-' + livelihood.id" data-parent="#myGroup">
                  <livelihood-form-component :livelihood="livelihood" :submit="'Update'"></livelihood-form-component>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

export default {
  props : ['livelihoods'],
}
</script>
