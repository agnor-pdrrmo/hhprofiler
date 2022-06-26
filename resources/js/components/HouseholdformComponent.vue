<template>
    <div>
        <div class="card-body">
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label>
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="formEdit.respondent">
            </div>
            <div class="form-group mb-1">
                <label for="libmunicipalitie_psgccode">Municipality</label>
                <input type="text" class="form-control form-control-sm" id="libmunicipalitie_psgccode" v-model="formEdit.libmunicipalitie_psgccode">
            </div>
            <div class="form-group mb-1">
                <label for="libbarangay_psgccode">Barangay</label>
                <input type="text" class="form-control form-control-sm" id="libbarangay_psgccode" v-model="formEdit.libbarangay_psgccode">
            </div>
            <div class="form-group mb-1">
                <label for="purok">Purok</label>
                <input type="text" class="form-control form-control-sm" id="purok" v-model="formEdit.purok">
            </div>
             <div class="form-group mb-1">
                <label for="nameenumerator">name of Enumerator</label>
                <input type="text" class="form-control form-control-sm" id="nameenumerator" v-model="formEdit.nameenumerator">
            </div>
            <div class="form-group mb-1">
                <label for="libbuildingtype_id">Type of building</label>
                <input type="text" class="form-control form-control-sm" id="libbuildingtype_id" v-model="formEdit.libbuildingtype_id">
            </div>
            <div class="form-group mb-1">
                <label for="libtenuralstatu_id">Tenural status</label>
                <input type="text" class="form-control form-control-sm" id="libtenuralstatu_id" v-model="formEdit.libtenuralstatu_id">
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
                <input type="text" class="form-control form-control-sm" id="access_electricity" v-model="formEdit.access_electricity">
            </div>
        </div>   
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
       
    </div>
</template>

<script>
    export default {
        props: ['householddata'],
        data (){
            return {
                householdInfo: this.householddata,
                formEdit: {
                    respondents: this.householdInfo?.respondent,
                    libmunicipalitie_psgccode: null,
                    libbarangay_psgccode: null,
                    purok: null,
                    nameenumerator: null,
                    libbuildingtype_id: null,
                    libtenuralstatu_id: null,
                    year_construct: null,
                    bedrooms: 0,
                    storey: 0,
                    access_electricity: null
                }
            }
        }
    }
</script>