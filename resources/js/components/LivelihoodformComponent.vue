<template>
    <div>
        <div class="card card-body">
            <div class="form-group mb-1">
                <label for="liblivelihood_id">Type of livelihood</label>  
                <textarea  type="text" class="form-control form-control-sm" id="liblivelihood_id" rows="5" v-model="form.livelihood.liblivelihood.lib_livelihooddesc"></textarea>
            </div> 
            <div class="form-group mb-1">
                <label for="products">Name of products</label> 
                <input type="text" class="form-control form-control-sm" id="products" v-model="form.livelihood.products">
            </div> 
            <div class="form-group mb-1">
                <label for="market_value">Market value</label> 
                <input type="text" class="form-control form-control-sm" id="market_value" v-model="form.livelihood.market_value">
            </div> 
            <div class="form-group mb-3">
                <label for="total_area_volume_of_production">Total area / volume of production </label> 
                <input type="text" class="form-control form-control-sm" id="total_area_volume_of_production" v-model="form.livelihood.total_area_volume_of_production">
            </div> 
            <div class="form-group mb-3">
                <label for="libhhtenuralstatu_id">Tenural status of livelihood </label> 
                <input type="text" class="form-control form-control-sm" id="libhhtenuralstatu_id" v-model="form.livelihood.libhhtenuralstatu.lib_ternuralstatusdesc">
            </div> 
            <div class="form-group mb-3">
                <label for="with_insurance">With insurance </label> 
                <input type="text" class="form-control form-control-sm" id="with_insurance" v-model="form.livelihood.with_insurance">
            </div> 
            <div class="form-group mb-1">
                <label for="created_at">Date added: </label> 
                <p>{{livelihood.created_at}}</p>
            </div>
            <div class="form-group mb-1">
                <label for="updated_at">Date updated: </label> 
                <p>{{livelihood.updated_at}}</p>
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{submit}}</button>
        </div>
    </div>
</template>

<script>

export default {
    props: ['livelihood','submit'],
    data(){
      return {
        form: {
          livelihood:{
            id: this.livelihood.id,
            liblivelihood:{
                lib_livelihooddesc: this.livelihood.liblivelihood.lib_livelihooddesc
            },
            products: this.livelihood.products,
            market_value: this.livelihood.market_value,
            total_area_volume_of_production: this.livelihood.total_area_volume_of_production,
            libhhtenuralstatu:{
                lib_ternuralstatusdesc: this.livelihood.libhhtenuralstatu.lib_ternuralstatusdesc
            },
            with_insurance: (this.livelihood.with_insurance) ? 'Yes' : 'No'
          }
        }
      }
    }
}
</script>
