<template>
  <div>
    <h6>Municipality</h6>
    <div class="mb-1" v-for="(municipality,index) in municipalities" :key="municipality.id">
      <input 
            v-on:click="checkAll('municipality'+municipality.id,index)" 
            class="form-check-input" 
            type="checkbox" 
            :value="municipality.psgccode" 
            :id="'municipality'+municipality.id" 
            v-model="selected.municipalities">
      <a  data-toggle="collapse"  :href="'#collapse'+ municipality.id" aria-expanded="false">
          {{ municipality.lib_munname }} ({{ municipality.households_count }})
      </a>
      <div style="margin-left: 15px;" class="collapse" :id="'collapse'+ municipality.id">
          <div class="mb-1" v-for="barangay in municipality.barangays" :key="barangay.id">
            <input 
            :class="'municipality'+municipality.id" 
            class="form-check-input" 
            type="checkbox" 
            :value="barangay.psgccode" 
            :id="'barangay'+barangay.id" 
            v-model="selected.barangays">
            <label class="form-check-label" :for="'barangay' + barangay.id">
                {{ barangay.lib_brgyname }} ({{ barangay.households_count }})
            </label>
          </div>
      </div>
    </div>
  </div>
</template>
<script>
import $ from 'jquery';

export default {
  props : ['municipalities','barangays','selected'],
  methods: {
      checkAll: function(classValue,index){
        //alert($("#"+classValue).prop('checked'));
        var isCheck = $("#"+classValue).prop('checked');
        $("."+classValue).prop('checked',isCheck);
        if(isCheck){
          for(let i in this.municipalities[index].barangays){
            this.selected.barangays.push(this.municipalities[index].barangays[i].psgccode);
          }
        }else{
          for(let i in this.municipalities[index].barangays){
            this.removeA(this.selected.barangays,this.municipalities[index].barangays[i].psgccode);
          }
        }
      },
      removeA: function(arr){
          var what, a = arguments, L = a.length, ax;
          while (L > 1 && arr.length) {
              what = a[--L];
              while ((ax= arr.indexOf(what)) !== -1) {
                  arr.splice(ax, 1);
              }
          }
          return arr;
      },
  }
}
</script>