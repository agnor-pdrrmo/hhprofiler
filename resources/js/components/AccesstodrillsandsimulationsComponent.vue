<template>
  <div>
    <a data-toggle="collapse"  href="#accesstodrillsandsimulations" aria-expanded="false"><h6 style="color:#007bff;">Access Drills and Simulations</h6></a>
    <div class="collapse" id="accesstodrillsandsimulations">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'accesstodrillsandsimulations'+1" v-model="selected.accesstodrillsandsimulations">
        <label class="form-check-label" :for="'accesstodrillsandsimulations' + 1">
            Yes ({{ hasAccesstodrillsandsimulations.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'accesstodrillsandsimulations'+0" v-model="selected.accesstodrillsandsimulations">
        <label class="form-check-label" :for="'accesstodrillsandsimulations' + 0">
            No ({{ noAccesstodrillsandsimulations.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasAccesstodrillsandsimulations','noAccesstodrillsandsimulations','selected'],
}
</script>