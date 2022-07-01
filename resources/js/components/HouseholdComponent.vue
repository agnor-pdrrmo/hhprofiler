<template>
    <div>
         <div class="card-body" v-for="householdinfo in householdData" :key="householdinfo.id">       
            <household-form-component :household="householdinfo" :submit="'Update'"></household-form-component> 
         </div>
    </div>
</template>

<script>
    export default {
        props: ['householdData'],
    }
</script>