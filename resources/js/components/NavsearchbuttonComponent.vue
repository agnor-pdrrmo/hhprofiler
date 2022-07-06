<template>
    <!-- Navbar Search -->
    <li class="nav-item">
        <button v-on:click="callOpenModal" type="button" class="btn btn-block btn-outline-primary"><i class="fa-solid fa-magnifying-glass" ></i> Advance search</button>
    </li>
</template>

<script>
export default {
  methods:{
    callOpenModal: function(){
       Event.$emit('openSearchModal');
    }
  }
}
</script>