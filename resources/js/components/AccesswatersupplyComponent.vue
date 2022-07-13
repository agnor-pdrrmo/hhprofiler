<template>
  <div>
    <a data-toggle="collapse"  href="#accesswatersupply" aria-expanded="false"><h6 style="color:#007bff;">Water supply</h6></a>
    <div class="collapse" id="accesswatersupply">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'accesswatersupply'+1" v-model="selected.accesswatersupply">
        <label class="form-check-label" :for="'accesswatersupply' + 1">
            Yes ({{ hasAccesswatersupply.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'accesswatersupply'+0" v-model="selected.accesswatersupply">
        <label class="form-check-label" :for="'accesswatersupply' + 0">
            No ({{ noAccesswatersupply.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasAccesswatersupply','noAccesswatersupply','selected'],
}
</script>