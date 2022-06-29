<template>
  <div id="myGroup">   
          <ul>
            <li v-for="demography in demographies" :key="demography.id">
              <span :class="" ></span>
              <a style="text-transform: capitalize" data-toggle="collapse" :href="'#school-' + demography.id" aria-expanded="false" aria-controls="collapseExample">
                  {{demography.surname}} {{demography.firstname}} {{demography.middlename}}
              </a>
              <div class="collapse" :id="'school-' + demography.id" data-parent="#myGroup">
                  <div class="card card-body">
                      <div class="form-group mb-1">
                          <label for="surname">Surename</label> 
                          <input type="text" class="form-control form-control-sm" id="surname" v-model="demography.surname">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="firstname">Firstname</label> 
                          <input type="text" class="form-control form-control-sm" id="firstname" v-model="demography.firstname">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="middlename">Middlename</label> 
                          <input type="text" class="form-control form-control-sm" id="middlename" v-model="demography.middlename">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="extension">Extension</label> 
                          <input type="text" class="form-control form-control-sm" id="extension" v-model="demography.extension">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="nuclear_family">Nuclear family of</label> 
                          <input type="text" class="form-control form-control-sm" id="nuclear_family" v-model="demography.nuclear_family">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="librelationshiphead_id">Relationship to head</label> 
                          <input type="text" class="form-control form-control-sm" id="librelationshiphead_id" v-model="demography.librelationshiphead_id">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="libgender_id">Gender</label> 
                          <input type="text" class="form-control form-control-sm" id="libgender_id" v-model="demography.libgender_id">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="birthdate">Birthday</label> 
                          <input type="text" class="form-control form-control-sm" id="birthdate" v-model="demography.birthdate">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="libmaritalstatu_id">Marital status</label> 
                          <input type="text" class="form-control form-control-sm" id="libmaritalstatu_id" v-model="demography.libmaritalstatu_id">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="ethnicity_by_blood">Ethnicity by blood</label> 
                          <input type="text" class="form-control form-control-sm" id="ethnicity_by_blood" v-model="demography.ethnicity_by_blood">
                      </div> 
                       <div class="form-group mb-1">
                          <label for="member_ip">Member of IP's</label> 
                          <input type="text" class="form-control form-control-sm" id="member_ip" v-model="demography.member_ip">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="informal_settler">Informal Settler</label> 
                          <input type="text" class="form-control form-control-sm" id="informal_settler" v-model="demography.informal_settler">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="religion">Religion</label> 
                          <input type="text" class="form-control form-control-sm" id="religion" v-model="demography.religion">
                      </div> 
                      <div class="form-group mb-1">
                          <label for="person_with_special_needs">Person with special needs</label> 
                          <input type="text" class="form-control form-control-sm" id="person_with_special_needs" v-model="demography.person_with_special_needs">
                      </div>
                      <div class="form-group mb-1">
                          <label for="libdisability_id">Disability specification</label> 
                          <input type="text" class="form-control form-control-sm" id="libdisability_id" v-model="demography.libdisability_id">
                      </div>
                      <div class="form-group mb-1">
                          <label for="is_ofw">OFW</label> 
                          <input type="text" class="form-control form-control-sm" id="is_ofw" v-model="demography.is_ofw">
                      </div>
                      <div class="form-group mb-1">
                          <label for="residence_3_years">Residence 3 years</label> 
                          <input type="text" class="form-control form-control-sm" id="residence_3_years" v-model="demography.residence_3_years">
                      </div>
                      <div class="form-group mb-1">
                          <label for="libnutritionalstatu_id">Nutritional status</label> 
                          <input type="text" class="form-control form-control-sm" id="libnutritionalstatu_id" v-model="demography.libnutritionalstatu_id">
                      </div>
                      <div class="form-group mb-1">
                          <label for="nutrional_status_recorded">Nutritional status recorded</label> 
                          <input type="text" class="form-control form-control-sm" id="nutrional_status_recorded" v-model="demography.nutrional_status_recorded">
                      </div>
                      <div class="form-group mb-1">
                          <label for="current_attending_school">Currently attending school</label> 
                          <input type="text" class="form-control form-control-sm" id="current_attending_school" v-model="demography.current_attending_school">
                      </div>
                      <div class="form-group mb-1">
                          <label for="current_attending_libgradelvl_glcode">Current attending school grade/level</label> 
                          <input type="text" class="form-control form-control-sm" id="current_attending_libgradelvl_glcode" v-model="demography.current_attending_libgradelvl_glcode">
                      </div>
                      <div class="form-group mb-1">
                          <label for="highest_education_attainment_libgradelvl_glcode">Highest education attainment</label> 
                          <input type="text" class="form-control form-control-sm" id="current_attending_libgradelvl_glcode" v-model="demography.current_attending_libgradelvl_glcode">
                      </div>
                      <div class="form-group mb-1">
                          <label for="libtscshvc_id">Tscshvc</label> 
                          <input type="text" class="form-control form-control-sm" id="libtscshvc_id" v-model="demography.libtscshvc_id">
                      </div>
                      <div class="form-group mb-1">
                          <label for="can_read_write_or_atleast_hs_graduate">Can read/write or atleast highschool graduate</label> 
                          <input type="text" class="form-control form-control-sm" id="can_read_write_or_atleast_hs_graduate" v-model="demography.can_read_write_or_atleast_hs_graduate">
                      </div>
                      <div class="form-group mb-1">
                          <label for="primary_occupation">Primary occupation</label> 
                          <input type="text" class="form-control form-control-sm" id="primary_occupation" v-model="demography.primary_occupation">
                      </div>
                      <div class="form-group mb-1">
                          <label for="libmonthlyincome_id">Monthly income</label> 
                          <input type="text" class="form-control form-control-sm" id="libmonthlyincome_id" v-model="demography.libmonthlyincome_id">
                      </div>
                      <div class="form-group mb-1">
                          <label for="sss_member">SSS Member</label> 
                          <input type="text" class="form-control form-control-sm" id="sss_member" v-model="demography.sss_member">
                      </div>
                      <div class="form-group mb-1">
                          <label for="gsis_member">GSIS Member</label> 
                          <input type="text" class="form-control form-control-sm" id="gsis_member" v-model="demography.gsis_member">
                      </div>
                      <div class="form-group mb-1">
                          <label for="philhealth_member">Philhealth member</label> 
                          <input type="text" class="form-control form-control-sm" id="philhealth_member" v-model="demography.philhealth_member">
                      </div>
                      <div class="form-group mb-1">
                          <label for="dependent_of_philheath_member">Dependent philhealth member</label> 
                          <input type="text" class="form-control form-control-sm" id="dependent_of_philheath_member" v-model="demography.dependent_of_philheath_member">
                      </div>
                       <div class="form-group mb-1">
                          <label for="created_at">Date added</label> 
                          <input type="text" class="form-control form-control-sm" id="created_at" v-model="demography.created_at">
                      </div>
                      <div class="form-group mb-1">
                          <label for="updated_at">Date updated</label> 
                          <input type="text" class="form-control form-control-sm" id="updated_at" v-model="demography.updated_at">
                      </div>
                  </div>
                  <div class="card-footer">
                      <button type="submit" class="btn btn-primary">Update</button>
                  </div>
              </div>
            </li>        
          </ul>  
  </div>  
</template>
<script>

import $ from 'jquery';

export default {
  props : ['demographies','respondent'],
  data(){
     return{
      
     }
  },
  computed: {
    updateDemographies:{
      get(){
        return this.demographies;
      },
      set(val){
        this.demographies = val;
      }
    }
  }
}
</script>
