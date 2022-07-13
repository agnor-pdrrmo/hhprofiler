<template>
  <div>
    <a data-toggle="collapse"  href="#hhwatertenuralstatus" aria-expanded="false"><h6 style="color:#007bff;">Water tenural status</h6></a>
    <div class="collapse" id="hhwatertenuralstatus">
      <div class="mb-1" v-for="(waterhhtenuralstatu) in hhwatertenuralstatus" :key="waterhhtenuralstatu.id">
        <input class="form-check-input" type="checkbox" :value="waterhhtenuralstatu.id" :id="'waterhhtenuralstatu'+waterhhtenuralstatu.id" v-model="selected.hhwatertenuralstatus">
        <label class="form-check-label" :for="'waterhhtenuralstatu' + waterhhtenuralstatu.id">
            {{ waterhhtenuralstatu.lib_wtdesc }} ({{ waterhhtenuralstatu.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hhwatertenuralstatus','selected'],

}
</script>