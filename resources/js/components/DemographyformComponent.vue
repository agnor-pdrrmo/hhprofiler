<template>
    <div>
        <div class="card card-body">
            <div class="form-group mb-1">
                <label for="surname">Surename</label>  
                <input type="text" class="form-control form-control-sm" id="surname" v-model="formEdit.demography.surname">
            </div> 
            <div class="form-group mb-1">
                <label for="firstname">Firstname</label> 
                <input type="text" class="form-control form-control-sm" id="firstname" v-model="formEdit.demography.firstname">
            </div> 
            <div class="form-group mb-1">
                <label for="middlename">Middlename</label> 
                <input type="text" class="form-control form-control-sm" id="middlename" v-model="formEdit.demography.middlename">
            </div> 
            <div class="form-group mb-1">
                <label for="extension">Extension</label> 
                <input type="text" class="form-control form-control-sm" id="extension" v-model="formEdit.demography.extension">
            </div> 
            <div class="form-group mb-1">
                <label for="nuclear_family">Nuclear family of</label> 
                <input type="text" class="form-control form-control-sm" id="nuclear_family" v-model="formEdit.demography.nuclear_family">
            </div> 
            <div class="form-group mb-1">
                <label for="librelationshiphead_id">Relationship to head</label> 
                <input type="text" class="form-control form-control-sm" id="librelationshiphead_id" v-model="formEdit.demography.librelationshiphead.lib_rhname">
            </div> 
            <div class="form-group mb-1">
                <label for="libgender_id">Gender</label> 
                <input type="text" class="form-control form-control-sm" id="libgender_id" v-model="formEdit.demography.libgender.lib_gname">
            </div> 
            <div class="form-group mb-1">
                <label for="birthdate">Birthday</label> 
                <input type="text" class="form-control form-control-sm" id="birthdate" v-model="formEdit.demography.birthdate">
            </div> 
            <div class="form-group mb-1">
                <label for="birthdate">Age</label> 
                <input readonly type="text" class="form-control form-control-sm" id="birthdate" v-model="formEdit.demography.age">
            </div> 
            <div class="form-group mb-1">
                <label for="libmaritalstatu_id">Marital status</label> 
                <input type="text" class="form-control form-control-sm" id="libmaritalstatu_id" v-model="formEdit.demography.libmaritalstatu.lib_msname">
            </div> 
            <div class="form-group mb-1">
                <label for="ethnicity_by_blood">Ethnicity by blood</label> 
                <input type="text" class="form-control form-control-sm" id="ethnicity_by_blood" v-model="formEdit.demography.ethnicity_by_blood">
            </div> 
            <div class="form-group mb-1">
                <label for="member_ip">Member of IP's</label> 
                <input type="text" class="form-control form-control-sm" id="member_ip" v-model="formEdit.demography.member_ip">
            </div> 
            <div class="form-group mb-1">
                <label for="informal_settler">Informal Settler</label> 
                <input type="text" class="form-control form-control-sm" id="informal_settler" v-model="formEdit.demography.informal_settler">
            </div> 
            <div class="form-group mb-1">
                <label for="religion">Religion</label> 
                <input type="text" class="form-control form-control-sm" id="religion" v-model="formEdit.demography.religion">
            </div> 
            <div class="form-group mb-1">
                <label for="person_with_special_needs">Person with special needs</label> 
                <input type="text" class="form-control form-control-sm" id="person_with_special_needs" v-model="formEdit.demography.person_with_special_needs">
            </div>
            <div class="form-group mb-1">
                <label for="libdisability_id">Disability specification</label> 
                <input type="text" class="form-control form-control-sm" id="libdisability_id" v-model="formEdit.demography.libsisabilitie">
            </div>
            <div class="form-group mb-1">
                <label for="is_ofw">OFW</label> 
                <input type="text" class="form-control form-control-sm" id="is_ofw" v-model="formEdit.demography.is_ofw">
            </div>
            <div class="form-group mb-1">
                <label for="residence_3_years">Residence 3 years</label> 
                <input type="text" class="form-control form-control-sm" id="residence_3_years" v-model="formEdit.demography.residence_3_years">
            </div>
            <div class="form-group mb-1">
                <label for="libnutritionalstatu_id">Nutritional status</label> 
                <input type="text" class="form-control form-control-sm" id="libnutritionalstatu_id" v-model="formEdit.demography.libnutrionalstatu.lib_nsname">
            </div>
            <div class="form-group mb-1">
                <label for="nutrional_status_recorded">Nutritional status recorded</label> 
                <input type="text" class="form-control form-control-sm" id="nutrional_status_recorded" v-model="formEdit.demography.nutrional_status_recorded">
            </div>
            <div class="form-group mb-1">
                <label for="current_attending_school">Currently attending school</label> 
                <input type="text" class="form-control form-control-sm" id="current_attending_school" v-model="formEdit.demography.current_attending_school">
            </div>
            <div class="form-group mb-1">
                <label for="current_attending_libgradelvl_glcode">Current attending school grade/level</label> 
                <input type="text" class="form-control form-control-sm" id="current_attending_libgradelvl_glcode" v-model="formEdit.demography.libgradelvl.lib_glname">
            </div>
            <div class="form-group mb-1">
                <label for="highest_education_attainment_libgradelvl_glcode">Highest education attainment</label> 
                <input type="text" class="form-control form-control-sm" id="highest_education_attainment_libgradelvl_glcode" v-model="formEdit.demography.highestgradelvl.lib_glname">
            </div>
            <div class="form-group mb-1">
                <label for="libtscshvc_id">Track / Strand / Course (for Senior High school / Vocational / College)</label> 
                <input type="text" class="form-control form-control-sm" id="libtscshvc_id" v-model="formEdit.demography.libtscshvc_id.lib_tscshvcname">
            </div>
            <div class="form-group mb-1">
                <label for="can_read_write_or_atleast_hs_graduate">Can read/write or atleast highschool graduate</label> 
                <input type="text" class="form-control form-control-sm" id="can_read_write_or_atleast_hs_graduate" v-model="formEdit.demography.can_read_write_or_atleast_hs_graduate">
            </div>
            <div class="form-group mb-1">
                <label for="primary_occupation">Primary occupation</label> 
                <input type="text" class="form-control form-control-sm" id="primary_occupation" v-model="formEdit.demography.primary_occupation">
            </div>
            <div class="form-group mb-1">
                <label for="libmonthlyincome_id">Monthly income</label> 
                <input type="text" class="form-control form-control-sm" id="libmonthlyincome_id" v-model="formEdit.demography.libmonthlyincome_id.lib_miname">
            </div>
            <div class="form-group mb-1">
                <label for="sss_member">SSS Member</label> 
                <input type="text" class="form-control form-control-sm" id="sss_member" v-model="formEdit.demography.sss_member">
            </div>
            <div class="form-group mb-1">
                <label for="gsis_member">GSIS Member</label> 
                <input type="text" class="form-control form-control-sm" id="gsis_member" v-model="formEdit.demography.gsis_member">
            </div>
            <div class="form-group mb-1">
                <label for="philhealth_member">Philhealth member</label> 
                <input type="text" class="form-control form-control-sm" id="philhealth_member" v-model="formEdit.demography.philhealth_member">
            </div>
            <div class="form-group mb-1">
                <label for="dependent_of_philheath_member">Dependent philhealth member</label> 
                <input type="text" class="form-control form-control-sm" id="dependent_of_philheath_member" v-model="formEdit.demography.dependent_of_philheath_member">
            </div>
            <div class="form-group mb-1">
                <label for="created_at">Date added</label> 
                <input type="text" class="form-control form-control-sm" id="created_at" v-model="formEdit.demography.created_at">
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated</label> 
                <input type="text" class="form-control form-control-sm" id="updated_at" v-model="formEdit.demography.updated_at">
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{submit}}</button>
        </div>
    </div>
</template>

<script>

export default {
    props: ['demography','submit'],
    data(){
      return {
        formEdit: {
          demography:{
            surname: this.demography.surname,
            firstname: this.demography.firstname,
            middlename: this.demography.middlename,
            extension: this.demography.extension,
            nuclear_family: this.demography.nuclear_family,
            librelationshiphead:{
              lib_rhname: this.demography.librelationshiphead?.lib_rhname
            },
            libgender:{
              lib_gname: this.demography.libgender?.lib_gname
            },
            birthdate: this.demography.birthdate,
            age: this.getAge(this.demography.birthdate),
            libmaritalstatu: {
              lib_msname: this.demography.libmaritalstatu?.lib_msname
            },
            ethnicity_by_blood: this.demography.ethnicity_by_blood,
            member_ip: (this.demography.member_ip) ? 'Yes' : 'No',
            informal_settler: (this.demography.informal_settler) ? 'Yes' : 'No',
            religion: this.demography.religion,
            person_with_special_needs: (this.demography.person_with_special_needs) ? 'Yes' : 'No',
            libdisabilitie:{
              lib_dname: this.demography.libsisabilitie?.lib_dname
            },
            is_ofw: (this.demography.is_ofw) ? 'Yes' : 'No',
            residence_3_years: (this.demography.residence_3_years) ? 'Yes' : 'No',
            libnutrionalstatu:{
              lib_nsname: this.demography.libnutrionalstatu?.lib_nsname
            },
            nutrional_status_recorded: this.demography.nutrional_status_recorded,
            current_attending_school: (this.demography.current_attending_school) ? 'Yes' : 'No',
            libgradelvl: {
              lib_glname: this.demography.libgradelvl?.lib_glname
            },
            highestgradelvl: {
              lib_glname: this.demography.highestgradelvl?.lib_glname
            },
            libtscshvc_id: {
              lib_tscshvcname: this.demography.libtscshvc_id?.lib_tscshvcname
            },
            can_read_write_or_atleast_hs_graduate: (this.demography.can_read_write_or_atleast_hs_graduate) ? 'Yes' : 'No',
            primary_occupation: this.demography.primary_occupation,
            libmonthlyincome_id: {
              lib_miname: this.demography.libmonthlyincome_id?.lib_miname
            },
            sss_member: (this.demography.sss_member) ? 'Yes' : 'No',
            gsis_member: (this.demography.gsis_member) ? 'Yes' : 'No',
            philhealth_member: (this.demography.philhealth_member) ? 'Yes' : 'No',
            dependent_of_philheath_member: (this.demography.dependent_of_philheath_member) ? 'Yes' : 'No',
            created_at : this.demography.created_at,
            updated_at : this.demography.updated_at
          }
        }
      }
    },
    methods:{
      getAge: function(birthday){
          var bday = new Date(birthday);
          var ageDifMs = Date.now() - bday.getTime();
          var ageDate = new Date(ageDifMs); // miliseconds from epoch
          return Math.abs(ageDate.getUTCFullYear() - 1970);
      }
    }
}
</script>
