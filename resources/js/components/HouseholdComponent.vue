<template>
    <div>
         <div v-if="householdData.length === 0">
            <p> No household information</p>
         </div>
         <div v-else class="card-body" v-for="householdinfo in householdData" :key="householdinfo.controlnumber">       
            <household-form-component :household="householdinfo" :submit="'Update'"></household-form-component> 
         </div>
    </div>
</template>

<script>
    export default {
        props: ['householdData'],
    }
</script>