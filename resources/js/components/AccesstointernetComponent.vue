<template>
  <div>
    <a data-toggle="collapse"  href="#accesstointernet" aria-expanded="false"><h6 style="color:#007bff;">Has Internet</h6></a>
    <div class="collapse" id="accesstointernet">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'accesstointernet'+1" v-model="selected.accesstointernet">
        <label class="form-check-label" :for="'accesstointernet' + 1">
            Yes ({{ hasInternet.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'accesstointernet'+0" v-model="selected.accesstointernet">
        <label class="form-check-label" :for="'accesstointernet' + 0">
            No ({{ noInternet.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasInternet','noInternet','selected'],
}
</script>