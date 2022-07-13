<template>
  <div>
    <a data-toggle="collapse"  href="#accesstoelectricity" aria-expanded="false"><h6 style="color:#007bff;">Has Electricity</h6></a>
    <div class="collapse" id="accesstoelectricity">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'access'+1" v-model="selected.accesstoelectricity">
        <label class="form-check-label" :for="'access' + 1">
            Yes ({{ hasElectricity.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'access'+0" v-model="selected.accesstoelectricity">
        <label class="form-check-label" :for="'access' + 0">
            Yes ({{ noElectricity.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasElectricity','noElectricity','selected'],
}
</script>