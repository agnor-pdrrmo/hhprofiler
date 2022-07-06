<template>
  <div>
        <div class="card-body">          
            <div class="form-group mb-2">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="form.respondent">
            </div>  
             <div class="form-group mb-2">
                <label for="libmunicipalitie_psgccode">Municipality</label>           
                <input type="text"  class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="form.libmunicipalitie_psgccode">
            </div>
            <div class="form-group mb-2">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="form.libbarangay_psgccode">
            </div>
            <div class="form-group mb-2">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="form.purok">
            </div>
             <div class="form-group mb-2">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="form.nameenumerator">
            </div>
            <div class="form-group mb-2">
                <label for="libbuildingtype_id">Type of building</label>
                <textarea  type="text" class="form-control form-control-sm" id="libbuildingtype_id" rows="3" v-model="form.libhhtypeofbuilding_id"></textarea>
            </div>
            <div class="form-group mb-2">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="form.libhhwatertenuralstatu_id">
            </div>
            <div class="form-group mb-2">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="form.year_construct">
            </div>
            <div class="form-group mb-2">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="form.estimated_cost">
            </div>
            <div class="form-group mb-2">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="form.bedrooms">
            </div>
            <div class="form-group mb-2">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="form.storey">
            </div>
            <div class="form-group mb-2">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="form.access_electricity">
            </div>
            <div class="form-group mb-2">
                <label for="access_internet">Access to Internet</label>
                <input type="text" class="form-control form-control-sm" id="access_internet" v-model="form.access_internet">
            </div>
            <div class="form-group mb-2">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <textarea type="text" class="form-control form-control-sm" id="libbuildingroofmaterial_id"  rows="3" v-model="form.libhhroofmaterial_id"></textarea>
            </div>
            <div class="form-group mb-2">
                <label for="medical_treatment">Medical treatment</label>
                <input type="text" class="form-control form-control-sm" id="medical_treatment" v-model="form.medical_treatment">
            </div>
            <div class="form-group mb-2">
                <label for="access_watersupply">Access to water supply</label>
                <input type="text" class="form-control form-control-sm" id="access_watersupply" v-model="form.access_watersupply">
            </div>
            <div class="form-group mb-2">
                <label for="potable">Potable</label>
                <input type="text" class="form-control form-control-sm" id="potable" v-model="form.potable">
            </div>
            <div class="form-group mb-2">
                <label for="libhhwatertenuralstatu_id">Water tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libhhwatertenuralstatu_id" v-model="form.libhhwatertenuralstatu_id">
            </div>
            <div class="form-group mb-2">
                <label for="libhhlvlwatersystem_id">Level of water system</label>
                <textarea type="text" class="form-control form-control-sm" id="libhhlvlwatersystem_id" rows="5" v-model="form.libhhwatertenuralstatu_id"></textarea>
            </div>
            <div class="form-group mb-2">
                <label for="floods_occur">Floods occur in the area</label>
                <input type="text" class="form-control form-control-sm" id="floods_occur" v-model="form.floods_occur">
            </div>
            <div class="form-group mb-2">
                <label for="year_flood">Year flooded</label>
                <input type="text" class="form-control form-control-sm" id="year_flood" v-model="form.year_flood">
            </div>
            <div class="form-group mb-2">
                <label for="experience_evacuationduringcalamity">Experience evacuated</label>
                <input type="text" class="form-control form-control-sm" id="experience_evacuationduringcalamity" v-model="form.experience_evacuationduringcalamity">
            </div>
            <div class="form-group mb-2">
                <label for="year_evacuated">Year evacuated</label>
                <input type="text" class="form-control form-control-sm" id="year_evacuated" v-model="form.year_evacuated">
            </div>
            <div class="form-group mb-2">
                <label for="libhhevacuationarea_id">Nearest accessable evacuation center</label>
                <input type="text" class="form-control form-control-sm" id="libhhevacuationarea_id" v-model="form.libhhevacuationarea_id">
            </div>
            <div class="form-group mb-2">
                <label for="has_accesstohealthmedicalfacilities">Access to medical facilities</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstohealthmedicalfacilities" v-model="form.has_accesstohealthmedicalfacilities">
            </div>
            <div class="form-group mb-2">
                <label for="has_accesstotelecommunications">Access to telecommunications</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstotelecommunications" v-model="form.has_accesstotelecommunications">
            </div>
            <div class="form-group mb-2">
                <label for="has_accesstodrillsandsimulations">Access to drill and simulations</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstodrillsandsimulations" v-model="form.has_accesstodrillsandsimulations">
            </div>
            <div class="form-group mb-3">
                <label for="image">Image</label>
                <input type="text" class="form-control form-control-sm" id="image" v-model="form.image">
            </div>       
        </div>   
        <div class="card-footer">
            <button type="submit" class="btn btn-primary" @click="$emit('search',form)">{{modalMethod}}</button>
        </div>
         
    </div>
</template>

<script>
export default {
  props : ['searchData','modalMethod'],
  data(){
      return {
        form: {
            respondent: '',
            libmunicipalitie_psgccode: '',
            libbarangay_psgccode:'',
            purok: '',
            nameenumerator: '',
            libhhtypeofbuilding_id: '',
            libhhwatertenuralstatu_id: '',
            year_construct: '',
            estimated_cost: null,
            bedrooms: null,
            storey: null,
            access_electricity: null,
            access_internet: null,
            libhhroofmaterial_id: '',
            medical_treatment: null,
            access_watersupply: null,
            potable: '',
            libhhwatertenuralstatu_id: '',
            libhhlvlwatersystem_id: '',
            floods_occur: null,
            year_flood: null,
            experience_evacuationduringcalamity: null,
            year_evacuated: '',
            libhhevacuationarea_id: '',
            has_accesstohealthmedicalfacilities: null,
            has_accesstotelecommunications: null,
            has_accesstodrillsandsimulations: null,
            image: ''
            }
      }
    },
}
</script>