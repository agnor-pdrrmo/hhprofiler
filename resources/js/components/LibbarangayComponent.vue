<template>
  <div>
    <h6>Barangay</h6>
    <div class="mb-1" v-for="(barangay) in barangays" :key="barangay.id">
      <input class="form-check-input" type="checkbox" :value="barangay.id" :id="'barangay'+barangay.id" v-model="selected.barangays">
      <label class="form-check-label" :for="'barangay' + barangay.id">
          {{ barangay.lib_brgyname }} ({{ barangay.households_count }})
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props : ['barangays','selected'],

}
</script>