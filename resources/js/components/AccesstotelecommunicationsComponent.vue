<template>
  <div>
    <a data-toggle="collapse"  href="#accesstotelecommunicationsComponent" aria-expanded="false"><h6 style="color:#007bff;">Access telecommunication</h6></a>
    <div class="collapse" id="accesstotelecommunicationsComponent">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'accesstotelecommunicationsComponent'+1" v-model="selected.accesstotelecommunications">
        <label class="form-check-label" :for="'accesstotelecommunicationsComponent' + 1">
            Yes ({{ hasAccesstotelecommunications.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'accesstotelecommunicationsComponent'+0" v-model="selected.accesstotelecommunications">
        <label class="form-check-label" :for="'accesstotelecommunicationsComponent' + 0">
            No ({{ noAccesstotelecommunications.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasAccesstotelecommunications','noAccesstotelecommunications','selected'],
}
</script>