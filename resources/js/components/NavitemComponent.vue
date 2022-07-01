<template>
    <li class="nav-item">
        <a v-on:click="callInvalidatesize" class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button" id="my-toggle-button">
            <i class="fas fa-book"></i>
        </a>
    </li>
</template>

<script>
export default {
  methods:{
    callInvalidatesize: function(){
       Event.$emit('mapInvalidate');
    }
  }
}
</script>