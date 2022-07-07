<template>
  <div>
    <h6>Type of building</h6>
    <div class="mb-1" v-for="(typeofbuilding) in typeOfBuildings" :key="typeofbuilding.id">
      <input class="form-check-input" type="checkbox" :value="typeofbuilding.id" :id="'typeofbuilding'+typeofbuilding.id" v-model="selected.typeofbuildings">
      <label class="form-check-label" :for="'typeofbuilding' + typeofbuilding.id">
          {{ typeofbuilding.lib_munname }} ({{ typeofbuilding.households_count }})
      </label>
    </div>
  </div>
</template>
<script>
export default {
  props : ['type-of-buildings','selected'],

}
</script>