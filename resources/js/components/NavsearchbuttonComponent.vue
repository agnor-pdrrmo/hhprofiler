<template>
    <!-- Navbar Search -->
    <li class="nav-item">
        <button v-on:click="callOpenModal" type="button" data-widget="control-sidebar" data-slide="true" class="btn btn-block btn-outline-primary"><i class="fa-solid fa-magnifying-glass" ></i> Advance search</button>
    </li>
</template>

<script>
export default {
  methods:{
    callOpenModal: function(){
       Event.$emit('openSearchControl');
    }
  }
}
</script>