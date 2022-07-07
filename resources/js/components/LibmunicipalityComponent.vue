<template>
  <div>
    <h6>Municipality</h6>
    <div class="mb-1" v-for="(municipality) in municipalities" :key="municipality.id">
      <input class="form-check-input" type="checkbox" :value="municipality.id" :id="'municipality'+municipality.id" v-model="selected.municipalities">
      <label class="form-check-label" :for="'municipality' + municipality.id">
          {{ municipality.lib_munname }} ({{ municipality.households_count }})
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props : ['municipalities','selected'],

}
</script>