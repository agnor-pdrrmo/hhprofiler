<template>
  <div>
    <a data-toggle="collapse"  href="#floodsoccur" aria-expanded="false"><h6 style="color:#007bff;">Flooded area</h6></a>
    <div class="collapse" id="floodsoccur">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'floodsoccur'+1" v-model="selected.floodsoccur">
        <label class="form-check-label" :for="'floodsoccur' + 1">
            Yes ({{ hasfloodsoccur.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'floodsoccur'+0" v-model="selected.floodsoccur">
        <label class="form-check-label" :for="'floodsoccur' + 0">
            No ({{ nofloodsoccur.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasfloodsoccur','nofloodsoccur','selected'],
}
</script>