<template>
  <div>
    <a data-toggle="collapse"  href="#potable" aria-expanded="false"><h6 style="color:#007bff;">Water potable</h6></a>
    <div class="collapse" id="potable">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'potable'+1" v-model="selected.potable">
        <label class="form-check-label" :for="'potable' + 1">
            Yes ({{ ispotable.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'potable'+0" v-model="selected.potable">
        <label class="form-check-label" :for="'potable' + 0">
            No ({{ notpotable.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['ispotable','notpotable','selected'],
}
</script>