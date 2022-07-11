<template>
  <div>
    <a data-toggle="collapse"  href="#hhtenuralstatus" aria-expanded="false"><h6 style="color:#007bff;">Tenural statuss</h6></a>
    <div class="collapse" id="hhtenuralstatus">
      <div class="mb-1" v-for="(hhtenuralstatu) in hhtenuralstatus" :key="hhtenuralstatu.id">
        <input class="form-check-input" type="checkbox" :value="hhtenuralstatu.id" :id="'hhtenuralstatu'+hhtenuralstatu.id" v-model="selected.hhtenuralstatus">
        <label class="form-check-label" :for="'hhtenuralstatu' + hhtenuralstatu.id">
            {{ hhtenuralstatu.lib_ternuralstatusdesc }} ({{ hhtenuralstatu.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hhtenuralstatus','selected'],

}
</script>