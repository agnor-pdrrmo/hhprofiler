<template>
  <div>
    <a data-toggle="collapse"  href="#libhhlvlwatersystems" aria-expanded="false"><h6 style="color:#007bff;">Level of water supply</h6></a>
    <div class="collapse" id="libhhlvlwatersystems">
      <div class="mb-1" v-for="(waterhhtenuralstatu) in libhhlvlwatersystems" :key="waterhhtenuralstatu.id">
        <input class="form-check-input" type="checkbox" :value="waterhhtenuralstatu.id" :id="'waterhhtenuralstatu'+waterhhtenuralstatu.id" v-model="selected.libhhlvlwatersystems">
        <label class="form-check-label" :for="'waterhhtenuralstatu' + waterhhtenuralstatu.id">
            {{ waterhhtenuralstatu.lib_hhlvldesc }} ({{ waterhhtenuralstatu.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['libhhlvlwatersystems','selected'],

}
</script>