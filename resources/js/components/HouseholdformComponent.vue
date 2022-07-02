<template>
    <div>
        <!-- {{household}} -->
        <div class="card-body">          
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="formEdit.respondent">
            </div>  
             <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipality</label>           
                <input type="text"  class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="compLibmunicipalitie">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="compLibbarangay">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="compPurok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="compNameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <textarea  type="text" class="form-control form-control-sm" id="libbuildingtype_id" rows="3" v-model="compLibhhtypeofbuilding"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="compLibhhtenuralstatu">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="compYearconstruct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="compEstimatedcost">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="compBedrooms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="compStorey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="compAccesselectricity">
            </div>
            <div class="form-group mb-1">
                <label for="access_internet">Access to Internet</label>
                <input type="text" class="form-control form-control-sm" id="access_internet" v-model="compAccessinternet">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <textarea type="text" class="form-control form-control-sm" id="libbuildingroofmaterial_id"  rows="3" v-model="compLibhhroofmaterial"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="medical_treatment">Medical treatment</label>
                <input type="text" class="form-control form-control-sm" id="medical_treatment" v-model="compMedicaltreatment">
            </div>
            <div class="form-group mb-1">
                <label for="access_watersupply">Access to water supply</label>
                <input type="text" class="form-control form-control-sm" id="access_watersupply" v-model="compAccesswatersupply">
            </div>
            <div class="form-group mb-1">
                <label for="potable">Potable</label>
                <input type="text" class="form-control form-control-sm" id="potable" v-model="compPotable">
            </div>
            <div class="form-group mb-1">
                <label for="libhhwatertenuralstatu_id">Water tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libhhwatertenuralstatu_id" v-model="compLibhhwatertenuralstatu">
            </div>
            <div class="form-group mb-1">
                <label for="libhhlvlwatersystem_id">Level of water system</label>
                <textarea type="text" class="form-control form-control-sm" id="libhhlvlwatersystem_id" rows="5" v-model="compLibhhlvlwatersystem"></textarea>
            </div>
            <div class="form-group mb-1">
                <label for="floods_occur">Floods occur in the area</label>
                <input type="text" class="form-control form-control-sm" id="floods_occur" v-model="compFloodsoccur">
            </div>
            <div class="form-group mb-1">
                <label for="year_flood">Year flooded</label>
                <input type="text" class="form-control form-control-sm" id="year_flood" v-model="compYearflood">
            </div>
            <div class="form-group mb-1">
                <label for="experience_evacuationduringcalamity">Experience evacuated</label>
                <input type="text" class="form-control form-control-sm" id="experience_evacuationduringcalamity" v-model="compExperienceevacationdurigcalamity">
            </div>
            <div class="form-group mb-1">
                <label for="year_evacuated">Year evacuated</label>
                <input type="text" class="form-control form-control-sm" id="year_evacuated" v-model="compYearevacuated">
            </div>
            <div class="form-group mb-1">
                <label for="libhhevacuationarea_id">Nearest accessable evacuation center</label>
                <input type="text" class="form-control form-control-sm" id="libhhevacuationarea_id" v-model="compLibhhevacuationarea">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstohealthmedicalfacilities">Access to medical facilities</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstohealthmedicalfacilities" v-model="compHasaccesstohealthmedicalfacilities">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstotelecommunications">Access to telecommunications</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstotelecommunications" v-model="compHasaccesstotelecommunications">
            </div>
            <div class="form-group mb-1">
                <label for="has_accesstodrillsandsimulations">Access to drill and simulations</label>
                <input type="text" class="form-control form-control-sm" id="has_accesstodrillsandsimulations" v-model="compHasaccesstodirllsandsimulations">
            </div>
            <div class="form-group mb-1">
                <label for="image">Image</label>
                <input type="text" class="form-control form-control-sm" id="image" v-model="compImage">
            </div>
            <div class="form-group mb-1">
                <label for="created_at">Date added</label> 
                <input type="text" class="form-control form-control-sm" id="created_at" v-model="compCreatedat">
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated</label> 
                <input type="text" class="form-control form-control-sm" id="updated_at" v-model="compUpdatedat">
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
        formEdit: {
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
            medical_treatment: (this.household.medical_treatment) ? 'Yes' : 'No',
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
    computed:{
        compRespondent:{
            get(){
                return this.formEdit.respondent;
            },
            set(val){
                this.formEdit.respondent
            }
        },
        compLibmunicipalitie:{
            get(){
                return this.formEdit.libmunicipalitie.lib_munname;
            },
            set(val){
                this.formEdit.libmunicipalitie.lib_munname = val;
            }
        },
        compLibbarangay:{
            get(){
                return this.formEdit.libbarangay.lib_brgyname;
            },
            set(val){
                this.formEdit.libbarangay.lib_brgyname = val;
            }
        },
        compPurok:{
            get(){
                return this.formEdit.purok;
            },
            set(val){
                this.formEdit.purok = val;
            }
        },
        compNameenumerator:{
            get(){
                return this.formEdit.nameenumerator;
            },
            set(val){
                this.formEdit.nameenumerator = val;
            }
        },
        compLibhhtypeofbuilding:{
            get(){
                return this.formEdit.libhhtypeofbuilding.lib_hhtobname;
            },
            set(val){
                this.formEdit.lib
            }
        },
        compLibhhtenuralstatu:{
            get(){
                return this.formEdit.libhhtenuralstatu.lib_ternuralstatusdesc;
            },
            set(val){
                this.formEdit.libhhtenuralstatu.lib_ternuralstatusdesc = val;
            }
        },
        compYearconstruct:{
            get(){
                return this.formEdit.year_construct;
            },
            set(val){
                this.formEdit.year_construct = val;
            }
        },
        compEstimatedcost:{
            get(){
                return this.formEdit.estimated_cost;
            },
            set(val){
                this.formEdit.estimated_cost = val;
            }
        },
        compBedrooms:{
            get(){
                return this.formEdit.bedrooms;
            },
            set(val){
                this.formEdit.bedrooms = val;
            }
        },
        compStorey:{
            get(){
                return this.formEdit.storey;
            },
            set(val){
                this.formEdit.storey = val;
            }
        },
        compAccesselectricity:{
            get(){
                return this.formEdit.access_electricity;
            },
            set(val){
                this.formEdit.access_electricity = val;
            }
        },
        compAccessinternet:{
            get(){
                return this.formEdit.access_internet;
            },
            set(val){
                this.formEdit.access_internet = val;
            }
        },
        compLibhhroofmaterial:{
            get(){
                return this.formEdit.libhhroofmaterial.lib_roofmaterialsdesc;
            },
            set(val){
                this.formEdit.libhhroofmaterial.lib_roofmaterialsdesc = val;
            }
        },
        compMedicaltreatment:{
            get(){
                return this.formEdit.medical_treatment;
            },
            set(val){
                this.formEdit.medical_treatment = val;
            }
        },
        compAccesswatersupply:{
            get(){
                return this.formEdit.access_watersupply;
            },
            set(val){
                this.formEdit.access_watersupply = val;
            }
        },
        compPotable:{
            get(){
                return this.formEdit.potable;
            },
            set(val){
                this.formEdit.potable = val
            }
        },
        compLibhhwatertenuralstatu:{
            get(){
                return this.formEdit.libhhwatertenuralstatu.lib_wtdesc;
            },
            set(val){
                this.formEdit.libhhwatertenuralstatu.lib_wtdesc = val;
            }
        },
        compLibhhlvlwatersystem:{
            get(){
                return this.formEdit.libhhlvlwatersystem.lib_wtdesc;
            },
            set(val){
                this.formEdit.libhhlvlwatersystem.lib_wtdesc = val;
            }
        },
        compFloodsoccur:{
            get(){
                return this.formEdit.floods_occur;
            },
            set(val){
                this.formEdit.floods_occur = val;
            }
        },
        compYearflood:{
            get(){
                return this.formEdit.year_flood;
            },
            set(val){
                this.formEdit.year_flood = val;
            }
        },
        compExperienceevacationdurigcalamity:{
            get(){
                return this.formEdit.experience_evacuationduringcalamity;
            },
            set(val){
                this.formEdit.experience_evacuationduringcalamity = val;
            }
        },
        compYearevacuated:{
            get(){
                return this.formEdit.year_evacuated;
            },
            set(val){
                this.formEdit.year_evacuated = val;
            }
        },
        compLibhhevacuationarea:{
            get(){
                return this.formEdit.libhhevacuationarea.lib_heaname;
            },
            set(val){
                return this.formEdit.libhhevacuationarea.lib_heaname = val;
            }
        },
        compHasaccesstohealthmedicalfacilities:{
            get(){
                return this.formEdit.has_accesstohealthmedicalfacilities;
            },
            set(val){
                this.formEdit.has_accesstohealthmedicalfacilities = val;
            }
        },
        compHasaccesstotelecommunications:{
            get(){
                return this.formEdit.has_accesstotelecommunications;
            },
            set(val){
                this.formEdit.has_accesstotelecommunications = val;
            }
        },
        compHasaccesstodirllsandsimulations:{
            get(){
                return this.formEdit.has_accesstodrillsandsimulations;
            },
            set(val){
                this.formEdit.has_accesstodrillsandsimulations = val;
            }
        },
        compImage: {
            get(){
                return this.formEdit.image;
            },
            set(val){
                this.formEdit.image = val;
            }
        },
        compCreatedat:{
            get(){
                return this.formEdit.created_at;
            },
            set(val){
                this.formEdit.created_at = val;
            }
        },
        compUpdatedat:{
            get(){
                return this.formEdit.updated_at;
            },
            set(val){
                this.formEdit.created_at = val;
            }
        }
    }
}
</script>