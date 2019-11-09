<template>
    <div class="home">
        <g-maps :props-css="props" :markers="markers" maps-default-ui="false"></g-maps>
        <button-action></button-action>
    </div>
</template>

<script>

import axios from 'axios';

export default {
    data(){
        return {
            markers:[],
            props:{
                "width":"100%",
                "height":"100vh"
            }
        }
    },
    methods:{
        MakerPointsMap(){
            let address = [
                "Rua almirante tamandare,81 paripe",
                "av trancredo neves 1543, caminho das arvores",
                "rua pedro malhado, 83, engenho velho de brotas"
            ]
            let coord = [];
          for(let i=0;i<address.length;i++){
             axios.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${address[i]}&key=AIzaSyBP5msr8MgqErAFuod0sOZYrO5sKH9QElo`).then(response=>{
                 coord.push(response.data.results[0].geometry.location)
             })  
          }
          this.markers = coord

        }
    },
    mounted(){
        this.MakerPointsMap()
    }
}
</script>