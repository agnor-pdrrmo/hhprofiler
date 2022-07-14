<template>
  <div>
    <a data-toggle="collapse"  href="#evacuatedduringcalamity" aria-expanded="false"><h6 style="color:#007bff;">Evacuated during calamities</h6></a>
    <div class="collapse" id="evacuatedduringcalamity">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'evacuatedduringcalamity'+1" v-model="selected.evacuateduringcalamity">
        <label class="form-check-label" :for="'evacuatedduringcalamity' + 1">
            Yes ({{ isEvacuate.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'evacuatedduringcalamity'+0" v-model="selected.evacuateduringcalamity">
        <label class="form-check-label" :for="'evacuatedduringcalamity' + 0">
            No ({{ notEvacuate.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['isEvacuate','notEvacuate','selected'],
}
</script>