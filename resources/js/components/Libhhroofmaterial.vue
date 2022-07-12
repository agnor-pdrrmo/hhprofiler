<template>
  <div>
    <a data-toggle="collapse"  href="#hhroofmaterials" aria-expanded="false"><h6 style="color:#007bff;">Roofing materials</h6></a>
    <div class="collapse" id="hhroofmaterials">
      <div class="mb-1" v-for="(hhroofmaterial) in hhroofmaterials" :key="hhroofmaterial.id">
        <input class="form-check-input" type="checkbox" :value="hhroofmaterial.id" :id="'hhroofmaterial'+hhroofmaterial.id" v-model="selected.hhroofmaterials">
        <label class="form-check-label" :for="'hhroofmaterial' + hhroofmaterial.id">
            {{ hhroofmaterial.lib_roofmaterialsdesc }} ({{ hhroofmaterial.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hhroofmaterials','selected'],

}
</script>