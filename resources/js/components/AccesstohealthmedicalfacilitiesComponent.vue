<template>
  <div>
    <a data-toggle="collapse"  href="#accesstohealthmedicalfacilities" aria-expanded="false"><h6 style="color:#007bff;">Access medical facilities</h6></a>
    <div class="collapse" id="accesstohealthmedicalfacilities">
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="1" :id="'accesstohealthmedicalfacilities'+1" v-model="selected.accesstohealthmedicalfacilities">
        <label class="form-check-label" :for="'accesstohealthmedicalfacilities' + 1">
            Yes ({{ hasAccesstohealthmedicalfacilities.households_count }})
        </label>
      </div>
      <div class="mb-1">
        <input class="form-check-input" type="checkbox" :value="0" :id="'accesstohealthmedicalfacilities'+0" v-model="selected.accesstohealthmedicalfacilities">
        <label class="form-check-label" :for="'accesstohealthmedicalfacilities' + 0">
            No ({{ noAccesstohealthmedicalfacilities.households_count }})
        </label>
      </div>
    </div>  
  </div>
</template>
<script>
export default {
  props : ['hasAccesstohealthmedicalfacilities','noAccesstohealthmedicalfacilities','selected'],
}
</script>