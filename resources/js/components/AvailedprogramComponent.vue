<template>
  <div id="myGroup"> 
          <ol v-if="availedprograms.length === 0" class="list-unstyled">
            <li>
              <p> No availed programs from government</p>
            </li>  
          </ol>
          <ol v-else> 
            <li v-for="availedprogram in availedprograms" :key="availedprogram.id">
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#demography-' + availedprogram.id" aria-expanded="false" aria-controls="collapseExample">
                  {{availedprogram.libtypeofprogram.lib_topname}}
              </a>
              <div class="collapse" :id="'demography-' + availedprogram.id" data-parent="#myGroup">
                  <availedprogram-form-component :availedprogram="availedprogram" :submit="'Update'"></availedprogram-form-component>
              </div>
            </li>          
          </ol>  
  </div>  
</template>
<script>

export default {
  props : ['availedprograms'],
}
</script>
