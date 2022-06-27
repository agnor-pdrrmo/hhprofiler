<template>
    <div>
      
        <div class="card-body">
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="computedRespondent">
            </div>  
            <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipalitys</label>
                <input type="text" class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="computedMunicipality">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode"  v-model="computedBarangay">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  id="purok" v-model="computedPurok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator"  v-model="computedNameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <input type="text" class="form-control form-control-sm" id="libbuildingtype_id" v-model="computedBuildingtype">
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  id="libtenuralstatu_id" v-model="computedTenuralstatus">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm" id="year_construct" v-model="computedYearconstruct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm" id="estimated_cost" v-model="computedEstimatedcost">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm" id="bedrooms" v-model="computedBedroms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm" id="storey" v-model="computedStorey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="computedAccesselectricity">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingroofmaterial_id">Roof material</label>
                <input type="text" class="form-control form-control-sm" for="libbuildingroofmaterial_id" v-model="computedRoofmaterial">
            </div>
        </div>   
        <div class="card-footer">
            <button type="submit" @click="updateHousehold(householdData)" class="btn btn-primary">Save</button>
        </div>
         
    </div>
</template>

<script>
    export default {
        props: ['householdData'],
        data (){
            return {
                householdInfo: this.householdData[0],
                formEdit: {}
            }
        },
        methods: {
            updateHousehold: function(hh){   
                //Distructuring hh[0]
                var [h] = hh;       
                //assign h object to formedit data   
                this.formEdit = h;
                // this.formEdit.respondent = h.respondent;
                // this.formEdit.libmunicipalitie_psgccode = h.libmunicipalitie_psgccode;
                // this.formEdit.libbarangay_psgccode = h.libbarangay_psgccode;
                // this.formEdit.purok = h.purok;
                // this.formEdit.nameenumerator = h.nameenumerator;
                // this.formEdit.libbuildingtype_id = h.libbuildingtype_id;
                // this.formEdit.libtenuralstatu_id = h.libtenuralstatu_id;
                // this.formEdit.year_construct = h.year_construct;
                // this.formEdit.estimated_cost = h.estimated_cost;
                // this.formEdit.bedrooms = h.bedrooms;
                // this.formEdit.storey = h.storey;
                // this.formEdit.access_electricity = h.access_electricity;
                // this.formEdit.libbuildingroofmaterial_id = h.libbuildingroofmaterial_id;
                // this.formEdit.medical_treatment = h.medical_treatment;
                // this.formEdit.access_watersupply = h.access_watersupply;
                // this.formEdit.potable = h.potable;
                // this.formEdit.libhhwatertenuralstatu_id = h.libhhwatertenuralstatu_id;
                // this.formEdit.libhhlvlwatersystem_id = h.libhhlvlwatersystem_id;
                // this.formEdit.floods_occur = h.floods_occur;
                // this.formEdit.year_flood = h.year_flood;
                // this.formEdit.experience_evacuationduringcalamity = h.experience_evacuationduringcalamity;
                // this.formEdit.year_evacuated = h.year_evacuated;
                // this.formEdit.libhhevacuationarea_id = h.libhhevacuationarea_id;
                // this.formEdit.has_accesstohealthmedicalfacilities = this.,
                // has_accesstotelecommunications: "",
                // has_accesstodrillsandsimulations: "",
                // image: ""
            }
        },
        computed: {
            fromHouseholdInfoDefault: {
                get() {
                    return this.householdInfo;
                },
                set(val) {
                    this.householdInfo = val;
                },
            },
            computedRespondent: {
                get() {             
                    return this.formEdit.respondent;
                },
                set(val) {
                    this.formEdit.respondent = val;
                },
            },
            computedMunicipality: {
                get(){
                    return this.formEdit.libmunicipalitie_psgccode;
                },
                set(val){
                    this.formEdit.libmunicipalitie_psgccode = val;
                }
            },
            computedBarangay: {
                get(){
                    return this.formEdit.libbarangay_psgccode;
                },
                set(val){
                    this.formEdit.libbarangay_psgccode = val;
                }
            },
            computedPurok: {
                get(){
                    return this.formEdit.purok;
                },
                set(val){
                    this.formEdit.purok = val;
                }
            },
            computedNameenumerator: {
                get(){
                    return this.formEdit.nameenumerator;
                },
                set(val){
                    this.formEdit.nameenumerator = val;
                }
            },
            computedBuildingtype: {
                get(){
                    return this.formEdit.libbuildingtype_id;
                },
                set(val){
                    this.formEdit.libbuildingtype_id = val;
                }
            },
            computedTenuralstatus: {
                get(){
                    return this.formEdit.libtenuralstatu_id;
                },
                set(val){
                    this.formEdit.libtenuralstatu_id = val;
                }
            },
            computedYearconstruct: {
                get(){
                    return this.formEdit.year_construct;
                },
                set(val){
                    this.formEdit.year_construct = val;
                }
            },
            computedEstimatedcost: {
                get(){
                    return this.formEdit.estimated_cost;
                },
                set(val){
                    this.formEdit.estimated_cost = val;
                }
            },
            computedBedroms: {
                get(){
                    return this.formEdit.bedrooms;
                },
                set(val){
                    this.formEdit.bedrooms = val;
                }
            },
            computedStorey: {
                get(){
                    return this.formEdit.storey;
                },
                set(val){
                    this.formEdit.storey = val;
                }
            },
            computedAccesselectricity: {
                get(){
                    return this.formEdit.access_electricity;
                },
                set(val){
                    this.formEdit.access_electricity = val;
                }
            },
            computedRoofmaterial: {
                get(){
                    return this.formEdit.libbuildingroofmaterial_id;
                },
                set(val){
                    this.formEdit.libbuildingroofmaterial_id = val;
                }
            },
            computedMedicaltreatment: {
                get(){
                    return this.formEdit.medical_treatment;
                },
                set(val){
                    this.formEdit.medical_treatment = val;
                }
            },
            computedAccesswater: {
                get(){
                    return this.formEdit.access_watersupply;
                },
                set(val){
                    this.formEdit.access_watersupply = val;
                }
            },
            computedPotable: {
                get(){
                    return this.formEdit.potable;
                },
                set(val){
                    this.formEdit.potable = val;
                }
            },
            computedWatertenuralstatus: {
                get(){
                    return this.formEdit.libhhwatertenuralstatu_id;
                },
                set(val){
                    this.formEdit.libhhwatertenuralstatu_id = val;
                }
            },
            computedLevelwatersystem: {
                get(){
                    return this.formEdit.libhhlvlwatersystem_id;
                },
                set(val){
                    this.formEdit.libhhlvlwatersystem_id = val;
                }
            },
            computedFloodsoccur: {
                get(){
                    return this.formEdit.floods_occur;
                },
                set(val){
                    this.formEdit.floods_occur = val;
                }
            },
            computedYearflood: {
                get(){
                    return this.formEdit.year_flood;
                },
                set(val){
                    this.formEdit.year_flood = val;
                }
            },
            computedExperienceevacuationduringcalamity: {
                get(){
                    return this.formEdit.experience_evacuationduringcalamity;
                },
                set(val){
                    this.formEdit.experience_evacuationduringcalamity = val;
                }
            },
            computedYearevacuated: {
                get(){
                    return this.formEdit.year_evacuated;
                },
                set(val){
                    this.formEdit.year_evacuated = val;
                }
            },
            computedEvacuationarea: {
                get(){
                    return this.formEdit.libhhevacuationarea_id;
                },
                set(val){
                    this.formEdit.libhhevacuationarea_id = val;
                }
            },
            computedAccesstohealthmedicalfacilities: {
                get(){
                    return this.formEdit.has_accesstohealthmedicalfacilities;
                },
                set(val){
                    this.formEdit.has_accesstohealthmedicalfacilities = val;
                }
            },
            computedAccesstotelecommunications: {
                get(){
                    return this.formEdit.has_accesstotelecommunications;
                },
                set(val){
                    this.formEdit.has_accesstotelecommunications = val;
                }
            },
            computedAccesstodrillsandsimulations: {
                get(){
                    return this.formEdit.has_accesstodrillsandsimulations;
                },
                set(val){
                    this.formEdit.has_accesstodrillsandsimulations = val;
                }
            }
        }
    }
</script>