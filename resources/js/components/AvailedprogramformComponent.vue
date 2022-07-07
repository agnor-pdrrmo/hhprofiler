<template>
    <div>
        <div class="card card-body" style="background-color: #343a40;">
            <div class="form-group mb-1">
                <label for="libtypeofprogram_id">Type of program</label>  
                <input type="text" class="form-control form-control-sm" id="libtypeofprogram_id" v-model="form.availedprogram.libtypeofprogram.lib_topname">
            </div> 
            <div class="form-group mb-1">
                <label for="nameofprogram">Name of program</label> 
                <input type="text" class="form-control form-control-sm" id="nameofprogram" v-model="form.availedprogram.nameofprogram">
            </div> 
            <div class="form-group mb-1">
                <label for="numberofbeneficiaries">Number of beneficiaries</label> 
                <input type="text" class="form-control form-control-sm" id="numberofbeneficiaries" v-model="form.availedprogram.numberofbeneficiaries">
            </div> 
            <div class="form-group mb-3">
                <label for="programimplementor">Program implementor</label> 
                <input type="text" class="form-control form-control-sm" id="programimplementor" v-model="form.availedprogram.programimplementor">
            </div> 
            <div class="form-group mb-1">
                <label for="created_at">Date added: </label> 
                <p>{{availedprogram.created_at}}</p>
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated: </label> 
                <p>{{availedprogram.updated_at}}</p>
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{submit}}</button>
        </div>
    </div>
</template>

<script>

export default {
    props: ['availedprogram','submit'],
    data(){
      return {
        form: {
          availedprogram:{
            id: this.availedprogram.id,
            libtypeofprogram:{
                lib_topname: this.availedprogram.libtypeofprogram.lib_topname
            },
            nameofprogram: this.availedprogram.nameofprogram,
            numberofbeneficiaries: this.availedprogram.numberofbeneficiaries,
            programimplementor: this.availedprogram.programimplementor
          }
        }
      }
    }
}
</script>
