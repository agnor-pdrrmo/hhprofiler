<template>
   <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                          <h3 class="card-title">Number of families and population vulnerable in hazard</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                          <table class="table table-bordered">
                            <thead class="thead-light">
                              <tr>
                                <th rowspan="2" class="align-middle text-center" style="width: 10px">MUNICIPALITY<br>NAME</th>
                                <th rowspan="2" class="align-middle text-center" style="width: 10px">BARANGAY<br>NAME</th>
                                <th rowspan="2" class="align-middle text-center" style="width: 10px">PUROK NAME</th>
                                <th class="align-middle text-center" rowspan="2">NO. OF<br>FAMILY</th>
                                <th class="align-middle text-center" colspan="2">NO. OF <br>INDIVIDUALS</th>
                                <th class="align-middle text-center" colspan="2">INFANT<br>(0-11 mos)</th>
                                <th class="align-middle text-center" colspan="2">CHILDREN<br>(17 y/o & below)</th>
                                <th class="align-middle text-center" colspan="2">ADULT<br>(18-59 y/o)</th>
                                <th class="align-middle text-center" colspan="2">ELDERLY<br>60 y/o & above</th>
                                <th class="align-middle text-center" colspan="2">PWD</th>
                                <th class="align-middle text-center" colspan="2">WITH<br>SICKNESS<br>(ALL AGES)</th>
                                <th class="align-middle text-center" colspan="2">INDIGENOUS<br>PEOPLES</th>
                                <th class="align-middle text-center" rowspan="2">PREGNANT WOMEN</th>
                              </tr>
                              <tr>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                                <th class="align-middle text-center">M</th>
                                <th class="align-middle text-center">F</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <Table v-bind:data="households"/>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                                <td class="align-middle text-center"></td>
                              </tr>
                            </tbody>
                          </table>
                        </div>                   
                      </div>
                      <!-- /.card -->

                </div>
            </div>
        </div>
    </section>
</template>

<script>
import Table from '../components/pivot/tableDataComponent.vue';
export default {

  props : ['households'],
  components: {
    Table
  },

  
}

</script>