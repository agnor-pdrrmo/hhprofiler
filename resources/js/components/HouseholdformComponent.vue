<template>
    <div>
      
        <div class="card-body">
            <div class="form-group mb-1">
                <label for="respondent">Respondent</label> 
                <input type="text" class="form-control form-control-sm" id="respondent" v-model="name">
            </div>  
        </div>   
         {{householdInfo}}
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
        },
        methods: {
            updateHousehold: function(hh){
                return this.fromHouseholdInfoDefault = hh;
            }
        },
        computed: {
            fromHouseholdInfoDefault: {
                get() {
                    //your validation
                    return this.householdInfo;
                },
                set(val) {
                    this.householdInfo = val;
                },
            },
        }
    }
</script>