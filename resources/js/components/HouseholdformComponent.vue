<template>
    <div>
      
        <div class="card-body" v-for="householdinfo in householdData" :key="householdinfo.key">
      
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="householdinfo.respondent">
            </div>  
            <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipalitys</label>           
                <input type="text"  class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="householdinfo.libmunicipalitie.lib_munname">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="householdinfo.libbarangay.lib_brgyname">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="householdinfo.purok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="householdinfo.nameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <textarea  type="text" class="form-control form-control-sm" id="libbuildingtype_id" rows="3" v-model="householdinfo.libhhtypeofbuilding.lib_hhtobname"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="householdinfo.libhhtenuralstatu.lib_ternuralstatusdesc">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="householdinfo.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="householdinfo.estimated_cost">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="householdinfo.bedrooms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="householdinfo.storey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="householdinfo.access_electricity">
            </div>
            <div class="form-group mb-1">
                <label for="access_internet">Access to Internet</label>
                <input type="text" class="form-control form-control-sm" id="access_internet" v-model="householdinfo.access_internet">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <textarea type="text" class="form-control form-control-sm" id="libbuildingroofmaterial_id"  rows="3" v-model="householdinfo.libhhroofmaterial.lib_roofmaterialsdesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="medical_treatment">Medical treatment</label>
                <input type="text" class="form-control form-control-sm" id="medical_treatment" v-model="householdinfo.medical_treatment">
            </div>
            <div class="form-group mb-1">
                <label for="access_watersupply">Access to water supply</label>
                <input type="text" class="form-control form-control-sm" id="access_watersupply" v-model="householdinfo.access_watersupply">
            </div>
            <div class="form-group mb-1">
                <label for="potable">Potable</label>
                <input type="text" class="form-control form-control-sm" id="potable" v-model="householdinfo.potable">
            </div>
            <div class="form-group mb-1">
                <label for="libhhwatertenuralstatu_id">Water tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libhhwatertenuralstatu_id" v-model="householdinfo.libhhwatertenuralstatu.lib_wtdesc">
            </div>
            <div class="form-group mb-1">
                <label for="libhhlvlwatersystem_id">Level of water system</label>
                <textarea type="text" class="form-control form-control-sm" id="libhhlvlwatersystem_id" rows="5" v-model="householdinfo.libhhlvlwatersystem.lib_hhlvldesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="floods_occur">Floods occur in the area</label>
                <input type="text" class="form-control form-control-sm" id="floods_occur" v-model="householdinfo.floods_occur">
            </div>
            <div class="form-group mb-1">
                <label for="year_flood">Year flooded</label>
                <input type="text" class="form-control form-control-sm" id="year_flood" v-model="householdinfo.year_flood">
            </div>
            <div class="form-group mb-1">
                <label for="experience_evacuationduringcalamity">Experience evacuated</label>
                <input type="text" class="form-control form-control-sm" id="experience_evacuationduringcalamity" v-model="householdinfo.experience_evacuationduringcalamity">
            </div>
            <div class="form-group mb-1">
                <label for="year_evacuated">Year evacuated</label>
                <input type="text" class="form-control form-control-sm" id="year_evacuated" v-model="householdinfo.year_evacuated">
            </div>
            <div class="form-group mb-1">
                <label for="libhhevacuationarea_id">Nearest accessable evacuation center</label>
                <input type="text" class="form-control form-control-sm" id="libhhevacuationarea_id" v-model="householdinfo.libhhevacuationarea.lib_heaname">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstohealthmedicalfacilities">Access to medical facilities</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstohealthmedicalfacilities" v-model="householdinfo.has_accesstohealthmedicalfacilities">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstotelecommunications">Access to telecommunications</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstotelecommunications" v-model="householdinfo.has_accesstotelecommunications">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstodrillsandsimulations">Access to drill and simulations</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstodrillsandsimulations" v-model="householdinfo.has_accesstodrillsandsimulations">
            </div>
            <div class="form-group mb-1">
                <label for="image">Image</label>
                <input type="text" class="form-control form-control-sm" id="image" v-model="householdinfo.image">
            </div>
            <div class="form-group mb-1">
                <label for="created_at">Date added</label> 
                <input type="text" class="form-control form-control-sm" id="created_at" v-model="householdinfo.created_at">
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated</label> 
                <input type="text" class="form-control form-control-sm" id="updated_at" v-model="householdinfo.updated_at">
            </div>
            <div class="form-group mb-1">
                <label for="created_at">Date added</label> 
                <input type="text" class="form-control form-control-sm" id="created_at" v-model="formEdit.created_at">
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated</label> 
                <input type="text" class="form-control form-control-sm" id="updated_at" v-model="formEdit.updated_at">
            </div>
        </div>   
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{submit}}</button>
        </div>
         
    </div>
</template>

<script>
    export default {
        props: ['householdData','submit']
    }
</script>