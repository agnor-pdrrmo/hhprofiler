<template>
  <div>
    <a data-toggle="collapse"  href="#typeofbuilding" aria-expanded="false"><h6 style="color:#007bff;">Type of building</h6></a>
    <div class="collapse" id="typeofbuilding">
      <div class="mb-1" v-for="(hhtypeofbuilding) in hhtypeofbuildings" :key="hhtypeofbuilding.id">
        <input class="form-check-input" type="checkbox" :value="hhtypeofbuilding.id" :id="'hhtypeofbuilding'+hhtypeofbuilding.id" v-model="selected.hhtypeofbuildings">
        <label class="form-check-label" :for="'hhtypeofbuilding' + hhtypeofbuilding.id">
            {{ hhtypeofbuilding.lib_hhtobname }} ({{ hhtypeofbuilding.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hhtypeofbuildings','selected'],

}
</script>