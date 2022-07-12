/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue').default;

import * as Vue2Leaflet from 'vue2-leaflet';

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('map-view-component', require('./components/MapviewComponent.vue').default);
Vue.component('household-component', require('./components/HouseholdComponent.vue').default);
Vue.component('household-form-component', require('./components/HouseholdformComponent.vue').default);
Vue.component('household-search-component', require('./components/HouseholdsearchComponent.vue').default);
Vue.component('demography-component', require('./components/DemographyComponent.vue').default);
Vue.component('demography-form-component', require('./components/DemographyformComponent.vue').default);
Vue.component('availedprogram-component', require('./components/AvailedprogramComponent.vue').default);
Vue.component('availedprogram-form-component', require('./components/AvailedprogramformComponent.vue').default);
Vue.component('livelihood-component', require('./components/LivelihoodComponent.vue').default);
Vue.component('livelihood-form-component', require('./components/LivelihoodformComponent.vue').default);
Vue.component('section-header-component', require('./components/SectionheaderComponent.vue').default);
Vue.component('nav-item-component', require('./components/NavitemComponent.vue').default);
Vue.component('nav-item-search-component', require('./components/NavsearchbuttonComponent.vue').default);
Vue.component('modal-component', require('./components/ModalComponent.vue').default);

// Library component
Vue.component('lib-municipality', require('./components/LibmunicipalityComponent.vue').default);
Vue.component('lib-barangay', require('./components/LibbarangayComponent.vue').default);
Vue.component('lib-typeofbuilding', require('./components/Libhhtypeofbuilding.vue').default);
Vue.component('lib-hhtenuralstatus', require('./components/Libhhtenuralstatu.vue').default);
Vue.component('lib-hhroofmaterials', require('./components/Libhhroofmaterial.vue').default);


/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

//global event handler
 window.Event = new Vue();

const app = new Vue({
    el: '#app',
});
