<template>
    <div>
      
        <div class="card-body">
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="formEdit.respondent">
            </div>  
            <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipalitys</label>           
                <input type="text"  class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="formEdit.libmunicipalitie.lib_munname">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="formEdit.libbarangay.lib_brgyname">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="formEdit.purok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="formEdit.nameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <textarea  type="text" class="form-control form-control-sm" id="libbuildingtype_id" rows="3" v-model="formEdit.libhhtypeofbuilding.lib_hhtobname"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="formEdit.libhhtenuralstatu.lib_ternuralstatusdesc">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="formEdit.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="formEdit.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="formEdit.bedrooms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="formEdit.storey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="formEdit.access_electricity ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="access_internet">Access to Internet</label>
                <input type="text" class="form-control form-control-sm" id="access_internet" v-model="formEdit.access_internet ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <textarea type="text" class="form-control form-control-sm" id="libbuildingroofmaterial_id"  rows="3" v-model="formEdit.libhhroofmaterial.lib_roofmaterialsdesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="medical_treatment">Medical treatment</label>
                <input type="text" class="form-control form-control-sm" id="medical_treatment" v-model="formEdit.medical_treatment">
            </div>
            <div class="form-group mb-1">
                <label for="access_watersupply">Access to water supply</label>
                <input type="text" class="form-control form-control-sm" id="access_watersupply" v-model="formEdit.access_watersupply ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="potable">Potable</label>
                <input type="text" class="form-control form-control-sm" id="potable" v-model="formEdit.potable ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="libhhwatertenuralstatu_id">Water tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libhhwatertenuralstatu_id" v-model="formEdit.libhhwatertenuralstatu.lib_wtdesc">
            </div>
            <div class="form-group mb-1">
                <label for="libhhlvlwatersystem_id">Level of water system</label>
                <textarea type="text" class="form-control form-control-sm" id="libhhlvlwatersystem_id" rows="5" v-model="formEdit.libhhlvlwatersystem.lib_hhlvldesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="floods_occur">Floods occur in the area</label>
                <input type="text" class="form-control form-control-sm" id="floods_occur" v-model="formEdit.floods_occur ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="year_flood">Year flooded</label>
                <input type="text" class="form-control form-control-sm" id="year_flood" v-model="formEdit.year_flood">
            </div>
            <div class="form-group mb-1">
                <label for="experience_evacuationduringcalamity">Experience evacuated</label>
                <input type="text" class="form-control form-control-sm" id="experience_evacuationduringcalamity" v-model="formEdit.experience_evacuationduringcalamity ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="year_evacuated">Year evacuated</label>
                <input type="text" class="form-control form-control-sm" id="year_evacuated" v-model="formEdit.year_evacuated">
            </div>
            <div class="form-group mb-1">
                <label for="libhhevacuationarea_id">Nearest accessable evacuation center</label>
                <input type="text" class="form-control form-control-sm" id="libhhevacuationarea_id" v-model="formEdit.libhhevacuationarea.lib_heaname">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstohealthmedicalfacilities">Access to medical facilities</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstohealthmedicalfacilities" v-model="formEdit.has_accesstohealthmedicalfacilities ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstotelecommunications">Access to telecommunications</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstotelecommunications" v-model="formEdit.has_accesstotelecommunications ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstodrillsandsimulations">Access to drill and simulations</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstodrillsandsimulations" v-model="formEdit.has_accesstodrillsandsimulations ? 'Yes' : 'No'">
            </div>
            <div class="form-group mb-1">
                <label for="image">Image</label>
                <input type="text" class="form-control form-control-sm" id="image" v-model="formEdit.image">
            </div>
        </div>   
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
         
    </div>
</template>

<script>
    export default {
        data (){
            return {
                formEdit: {
                    libmunicipalitie:{
                        lib_munname: ""
                    },
                    libbarangay:{
                        lib_brgyname: ""
                    },
                    libhhtypeofbuilding:{
                        lib_hhtobname: "" 
                    },
                    libhhtenuralstatu:{
                        lib_ternuralstatusdesc: ""
                    },
                    libhhroofmaterial:{
                        lib_roofmaterialsdesc: ""
                    },
                    libhhwatertenuralstatu: {
                        lib_wtdesc: ""
                    },
                    libhhlvlwatersystem: {
                        lib_hhlvldesc:""
                    },
                    libhhevacuationarea: {
                        lib_heaname: ""
                    }
                },
            }
        },
        watch: {
            formEdit: function(){           
                this.formEdit;
            },
            deep: true
        },
        methods: {
            updateHousehold: function(hh){   
                //Distructuring hh[0]
                var [h] = hh;       
                //assign h object to formedit data   
                this.formEdit = h;  
            }
        }
    }
</script>