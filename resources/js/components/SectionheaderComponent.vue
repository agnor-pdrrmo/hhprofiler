<template>
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                <h1>{{title}}</h1>
                </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">{{breadcrumbitem}}</a></li>
                    <li class="breadcrumb-item active">{{breadcrumbitemactive}}</li>
                </ol>
            </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    props:  {
        title: String,
        breadcrumbitem : String,
        breadcrumbitemactive: String
    }
}
</script>