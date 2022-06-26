<template>
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        <div class="p-3">
        <h5>{{title}}</h5>
        <p>Sidebar content</p>
        </div>
    </aside>
</template>

<script>
export default {
    props : ['title']
}
</script>