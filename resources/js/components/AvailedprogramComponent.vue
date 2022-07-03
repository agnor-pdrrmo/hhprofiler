<template>
  <div id="myGroup">   
          <ul class="list-unstyled">
            <li v-for="availedprogram in availedprograms" :key="availedprogram.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#demography-' + demography.id" aria-expanded="false" aria-controls="collapseExample">
                  {{availedprogram.libtypeofprogram.lib_topname}}
              </a>
              <div class="collapse" :id="'demography-' + availedprogram.id" data-parent="#myGroup">
                  <availedprogram-form-component :availedprogram="availedprogram" :submit="'Update'"></availedprogram-form-component>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

export default {
  props : ['availedprograms'],
}
</script>
