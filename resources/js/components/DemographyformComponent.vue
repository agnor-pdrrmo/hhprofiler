<template>
  <div class="container" id="myGroup">
      
          <ul style="list-style-type:none;">
            <li v-for="school in schools" :key="school.id">
              <a data-toggle="collapse" :href="'#school-' + school.id" aria-expanded="false" aria-controls="collapseExample">
                  {{school.name}}
              </a>
              <div class="collapse" :id="'school-' + school.id" data-parent="#myGroup">
                  <div class="card card-body">
                      {{school.name}}
                  </div>
              </div>
            </li>        
          </ul>  
      
      <div class="collapse" id="collapseExample2" data-parent="#myGroup">
          <div class="card card-body">
              Content 2 here 
          </div>
      </div>
  </div>  
</template>
<script>
export default {
  data(){
     return{
      schools: [
        { id: 1, name: 'Lincoln',   teachers: [2, 2, 2], students: [40, 40, 40] },
        { id: 2, name: 'Oak Grove', teachers: [2, 2, 2], students: [40, 40, 40] },
        { id: 3, name: 'Fairview',  teachers: [2, 2, 2], students: [40, 40, 40] },
      ],
     }
  }
}
</script>