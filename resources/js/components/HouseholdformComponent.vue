<template>
    <div>
        <!-- {{household}} -->
        <div class="card-body">          
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="form.respondent">
            </div>  
             <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipality</label>           
                <input type="text"  class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="form.libmunicipalitie.lib_munname">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="form.libbarangay.lib_brgyname">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="form.purok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="form.nameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <textarea  type="text" class="form-control form-control-sm" id="libbuildingtype_id" rows="3" v-model="form.libhhtypeofbuilding.lib_hhtobname"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="form.libhhtenuralstatu.lib_ternuralstatusdesc">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="form.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="form.estimated_cost">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="form.bedrooms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="form.storey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="form.access_electricity">
            </div>
            <div class="form-group mb-1">
                <label for="access_internet">Access to Internet</label>
                <input type="text" class="form-control form-control-sm" id="access_internet" v-model="form.access_internet">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <textarea type="text" class="form-control form-control-sm" id="libbuildingroofmaterial_id"  rows="3" v-model="form.libhhroofmaterial.lib_roofmaterialsdesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="medical_treatment">Medical treatment</label>
                <input type="text" class="form-control form-control-sm" id="medical_treatment" v-model="form.medical_treatment">
            </div>
            <div class="form-group mb-1">
                <label for="access_watersupply">Access to water supply</label>
                <input type="text" class="form-control form-control-sm" id="access_watersupply" v-model="form.access_watersupply">
            </div>
            <div class="form-group mb-1">
                <label for="potable">Potable</label>
                <input type="text" class="form-control form-control-sm" id="potable" v-model="form.potable">
            </div>
            <div class="form-group mb-1">
                <label for="libhhwatertenuralstatu_id">Water tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libhhwatertenuralstatu_id" v-model="form.libhhwatertenuralstatu.lib_wtdesc">
            </div>
            <div class="form-group mb-1">
                <label for="libhhlvlwatersystem_id">Level of water system</label>
                <textarea type="text" class="form-control form-control-sm" id="libhhlvlwatersystem_id" rows="5" v-model="form.libhhlvlwatersystem.lib_wtdesc"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="floods_occur">Floods occur in the area</label>
                <input type="text" class="form-control form-control-sm" id="floods_occur" v-model="form.floods_occur">
            </div>
            <div class="form-group mb-1">
                <label for="year_flood">Year flooded</label>
                <input type="text" class="form-control form-control-sm" id="year_flood" v-model="form.year_flood">
            </div>
            <div class="form-group mb-1">
                <label for="experience_evacuationduringcalamity">Experience evacuated</label>
                <input type="text" class="form-control form-control-sm" id="experience_evacuationduringcalamity" v-model="form.experience_evacuationduringcalamity">
            </div>
            <div class="form-group mb-1">
                <label for="year_evacuated">Year evacuated</label>
                <input type="text" class="form-control form-control-sm" id="year_evacuated" v-model="form.year_evacuated">
            </div>
            <div class="form-group mb-1">
                <label for="libhhevacuationarea_id">Nearest accessable evacuation center</label>
                <input type="text" class="form-control form-control-sm" id="libhhevacuationarea_id" v-model="form.libhhevacuationarea.lib_hhtobname">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstohealthmedicalfacilities">Access to medical facilities</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstohealthmedicalfacilities" v-model="form.has_accesstohealthmedicalfacilities">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstotelecommunications">Access to telecommunications</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstotelecommunications" v-model="form.has_accesstotelecommunications">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstodrillsandsimulations">Access to drill and simulations</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstodrillsandsimulations" v-model="form.has_accesstodrillsandsimulations">
            </div>
            <div class="form-group mb-1">
                <label for="image">Image</label>
                <input type="text" class="form-control form-control-sm" id="image" v-model="form.image">
            </div>
            <div class="form-group mb-1">
                <label for="created_at">Date added</label> 
                <input type="text" class="form-control form-control-sm" id="created_at" v-model="form.created_at">
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated</label> 
                <input type="text" class="form-control form-control-sm" id="updated_at" v-model="form.updated_at">
            </div>
        </div>   
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{submit}}</button>
        </div>
         
    </div>
</template>

<script>
    export default {
    props: ['household','submit'],
    data(){
      return {
        form: {
            respondent: this.household.respondent,
            libmunicipalitie:{
                lib_munname: this.household.libmunicipalitie.lib_munname
            },
            libbarangay:{
                lib_brgyname: this.household.libbarangay.lib_brgyname
            },
            purok: this.household.purok,
            nameenumerator: this.household.nameenumerator,
            libhhtypeofbuilding:{
                lib_hhtobname: this.household.libhhtypeofbuilding.lib_hhtobname
            },
            libhhtenuralstatu:{
                lib_ternuralstatusdesc: this.household.libhhtenuralstatu.lib_ternuralstatusdesc
            },
            year_construct: this.household.year_construct,
            estimated_cost: this.household.estimated_cost,
            bedrooms: this.household.bedrooms,
            storey: this.household.storey,
            access_electricity: (this.household.access_electricity) ?  'Yes' : 'No',
            access_internet: (this.household.access_internet) ? 'Yes' : 'No',
            libhhroofmaterial:{
                lib_roofmaterialsdesc: this.household.libhhroofmaterial.lib_roofmaterialsdesc
            },
            medical_treatment: (this.household.medical_treatment) ? this.household.medical_treatment : 'No',
            access_watersupply: (this.household.access_watersupply) ? 'Yes' : 'No',
            potable: (this.household.potable) ? 'Yes' : 'No',
            libhhwatertenuralstatu:{
                lib_wtdesc: this.household.libhhwatertenuralstatu.lib_wtdesc
            },
            libhhlvlwatersystem: {
                lib_wtdesc: this.household.libhhlvlwatersystem.lib_wtdesc
            },
            floods_occur: (this.household.floods_occur) ? 'Yes' : 'No',
            year_flood: this.household.year_flood,
            experience_evacuationduringcalamity: (this.household.experience_evacuationduringcalamity) ? 'Yes' : 'No',
            year_evacuated: this.household.year_evacuated,
            libhhevacuationarea: {
                lib_heaname: this.household.libhhevacuationarea.lib_heaname
            },
            has_accesstohealthmedicalfacilities: (this.household.has_accesstohealthmedicalfacilities) ? 'Yes' : 'No',
            has_accesstotelecommunications: (this.household.has_accesstotelecommunications) ? 'Yes' : 'No',
            has_accesstodrillsandsimulations: (this.household.has_accesstodrillsandsimulations) ? 'Yes' : 'No',
            image: this.household.image,
            created_at: this.household.created_at,
            updated_at: this.household.updated_at
            }
      }
    },
    // computed:{
    //     compRespondent:{
    //         get(){
    //             return this.form.respondent;
    //         },
    //         set(val){
    //             this.form.respondent
    //         }
    //     },
    //     compLibmunicipalitie:{
    //         get(){
    //             return this.form.libmunicipalitie.lib_munname;
    //         },
    //         set(val){
    //             this.form.libmunicipalitie.lib_munname = val;
    //         }
    //     },
    //     compLibbarangay:{
    //         get(){
    //             return this.form.libbarangay.lib_brgyname;
    //         },
    //         set(val){
    //             this.form.libbarangay.lib_brgyname = val;
    //         }
    //     },
    //     compPurok:{
    //         get(){
    //             return this.form.purok;
    //         },
    //         set(val){
    //             this.form.purok = val;
    //         }
    //     },
    //     compNameenumerator:{
    //         get(){
    //             return this.form.nameenumerator;
    //         },
    //         set(val){
    //             this.form.nameenumerator = val;
    //         }
    //     },
    //     compLibhhtypeofbuilding:{
    //         get(){
    //             return this.form.libhhtypeofbuilding.lib_hhtobname;
    //         },
    //         set(val){
    //             this.form.lib
    //         }
    //     },
    //     compLibhhtenuralstatu:{
    //         get(){
    //             return this.form.libhhtenuralstatu.lib_ternuralstatusdesc;
    //         },
    //         set(val){
    //             this.form.libhhtenuralstatu.lib_ternuralstatusdesc = val;
    //         }
    //     },
    //     compYearconstruct:{
    //         get(){
    //             return this.form.year_construct;
    //         },
    //         set(val){
    //             this.form.year_construct = val;
    //         }
    //     },
    //     compEstimatedcost:{
    //         get(){
    //             return this.form.estimated_cost;
    //         },
    //         set(val){
    //             this.form.estimated_cost = val;
    //         }
    //     },
    //     compBedrooms:{
    //         get(){
    //             return this.form.bedrooms;
    //         },
    //         set(val){
    //             this.form.bedrooms = val;
    //         }
    //     },
    //     compStorey:{
    //         get(){
    //             return this.form.storey;
    //         },
    //         set(val){
    //             this.form.storey = val;
    //         }
    //     },
    //     compAccesselectricity:{
    //         get(){
    //             return this.form.access_electricity;
    //         },
    //         set(val){
    //             this.form.access_electricity = val;
    //         }
    //     },
    //     compAccessinternet:{
    //         get(){
    //             return this.form.access_internet;
    //         },
    //         set(val){
    //             this.form.access_internet = val;
    //         }
    //     },
    //     compLibhhroofmaterial:{
    //         get(){
    //             return this.form.libhhroofmaterial.lib_roofmaterialsdesc;
    //         },
    //         set(val){
    //             this.form.libhhroofmaterial.lib_roofmaterialsdesc = val;
    //         }
    //     },
    //     compMedicaltreatment:{
    //         get(){
    //             return this.form.medical_treatment;
    //         },
    //         set(val){
    //             this.form.medical_treatment = val;
    //         }
    //     },
    //     compAccesswatersupply:{
    //         get(){
    //             return this.form.access_watersupply;
    //         },
    //         set(val){
    //             this.form.access_watersupply = val;
    //         }
    //     },
    //     compPotable:{
    //         get(){
    //             return this.form.potable;
    //         },
    //         set(val){
    //             this.form.potable = val
    //         }
    //     },
    //     compLibhhwatertenuralstatu:{
    //         get(){
    //             return this.form.libhhwatertenuralstatu.lib_wtdesc;
    //         },
    //         set(val){
    //             this.form.libhhwatertenuralstatu.lib_wtdesc = val;
    //         }
    //     },
    //     compLibhhlvlwatersystem:{
    //         get(){
    //             return this.form.libhhlvlwatersystem.lib_wtdesc;
    //         },
    //         set(val){
    //             this.form.libhhlvlwatersystem.lib_wtdesc = val;
    //         }
    //     },
    //     compFloodsoccur:{
    //         get(){
    //             return this.form.floods_occur;
    //         },
    //         set(val){
    //             this.form.floods_occur = val;
    //         }
    //     },
    //     compYearflood:{
    //         get(){
    //             return this.form.year_flood;
    //         },
    //         set(val){
    //             this.form.year_flood = val;
    //         }
    //     },
    //     compExperienceevacationdurigcalamity:{
    //         get(){
    //             return this.form.experience_evacuationduringcalamity;
    //         },
    //         set(val){
    //             this.form.experience_evacuationduringcalamity = val;
    //         }
    //     },
    //     compYearevacuated:{
    //         get(){
    //             return this.form.year_evacuated;
    //         },
    //         set(val){
    //             this.form.year_evacuated = val;
    //         }
    //     },
    //     compLibhhevacuationarea:{
    //         get(){
    //             return this.form.libhhevacuationarea.lib_heaname;
    //         },
    //         set(val){
    //             return this.form.libhhevacuationarea.lib_heaname = val;
    //         }
    //     },
    //     compHasaccesstohealthmedicalfacilities:{
    //         get(){
    //             return this.form.has_accesstohealthmedicalfacilities;
    //         },
    //         set(val){
    //             this.form.has_accesstohealthmedicalfacilities = val;
    //         }
    //     },
    //     compHasaccesstotelecommunications:{
    //         get(){
    //             return this.form.has_accesstotelecommunications;
    //         },
    //         set(val){
    //             this.form.has_accesstotelecommunications = val;
    //         }
    //     },
    //     compHasaccesstodirllsandsimulations:{
    //         get(){
    //             return this.form.has_accesstodrillsandsimulations;
    //         },
    //         set(val){
    //             this.form.has_accesstodrillsandsimulations = val;
    //         }
    //     },
    //     compImage: {
    //         get(){
    //             return this.form.image;
    //         },
    //         set(val){
    //             this.form.image = val;
    //         }
    //     },
    //     compCreatedat:{
    //         get(){
    //             return this.form.created_at;
    //         },
    //         set(val){
    //             this.form.created_at = val;
    //         }
    //     },
    //     compUpdatedat:{
    //         get(){
    //             return this.form.updated_at;
    //         },
    //         set(val){
    //             this.form.created_at = val;
    //         }
    //     }
    // }
}
</script>