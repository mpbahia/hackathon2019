<template>
  <div id="template">
      <!-- <nav-bar></nav-bar> -->
      <!-- <menu-side-bar></menu-side-bar> -->
      <!-- <modal :is-active="openModal">
          <a href="" @click.prevent="teste" class="href">FecharModal</a>
      </modal> -->
      <router-view/>
  </div>
</template>

<script>
export default {
  data(){
    return {
       openModal:true
    }
  },
   methods:{
      teste(){
         this.openModal = false
      }
   }
}
</script>



