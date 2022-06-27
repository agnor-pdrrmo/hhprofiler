<template>
    <div>
      
        <div class="card-body">
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm"  v-model="computedRespondent">
            </div>  
            <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipalitys</label>
                <input type="text" class="form-control form-control-sm"  v-model="computedMunicipality">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm"  v-model="computedBarangay">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm"  v-model="computedPurok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.nameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.libbuildingtype_id">
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.libtenuralstatu_id">
            </div>
            <div class="form-group mb-1">
                <label for="year_construct">Year construct</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="estimated_cost">Estimated cost</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.year_construct">
            </div>
            <div class="form-group mb-1">
                <label for="bedrooms">Number of bedrooms</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.bedrooms">
            </div>
            <div class="form-group mb-1">
                <label for="storey">Storey</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.storey">
            </div>
            <div class="form-group mb-1">
                <label for="access_electricity">Access to electricity</label>
                <input type="text" class="form-control form-control-sm"  v-model="formEdit.access_electricity">
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
                formEdit: {
                    respondent: "",
                    libmunicipalitie_psgccode: "",
                    libbarangay_psgccode: "",
                    purok: "",
                    nameenumerator: "",
                    libbuildingtype_id: "",
                    libtenuralstatu_id: "",
                    year_construct: "",
                    bedrooms: 0,
                    storey: 0,
                    access_electricity: ""
                }
            }
        },
        methods: {
            updateHousehold: function(hh){   
                var [h] = hh;          
                this.formEdit.respondent = h.respondent;
                this.formEdit.libmunicipalitie_psgccode = h.libmunicipalitie_psgccode;
                this.formEdit.libbarangay_psgccode = h.libbarangay_psgccode;
                this.formEdit.purok = h.purok;
                this.formEdit.nameenumerator = h.nameenumerator;
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
            }
        }
    }
</script>