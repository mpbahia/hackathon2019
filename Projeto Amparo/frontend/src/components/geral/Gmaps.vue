<template>
     <div class="content-maps">
         <v-app id="inspire">
      <v-speed-dial
        v-model="fab"
        :top="top"
        :bottom="bottom"
        :right="right"
        :left="left"
        :direction="direction"
        :open-on-hover="hover"
        :transition="transition"
      >
        <template v-slot:activator>
          <v-btn
            v-model="fab"
            color="blue"
            dark
            fab
            class="btn-float-position"
          >
            <v-icon v-if="fab">mdi-close</v-icon>
            <v-icon v-else>mdi-bullhorn</v-icon>
          </v-btn>
        </template>
        <v-btn
          fab
          dark
          small
          color="blue"
        >
        <div class="btn-float-item">
          <div class="btn-float-label">
            Ajuda rápida
          </div>
          <v-icon>mdi-minus</v-icon>
        </div>
        </v-btn>
        <v-btn
          fab
          dark
          small
          color="blue"
        >
        <div class="btn-float-item">
          <div class="btn-float-label">
            Denúncia
          </div>
          <v-icon>mdi-minus</v-icon>
        </div>
        </v-btn>
        <v-btn
          fab
          dark
          small
          color="blue"
        >
          <div class="btn-float-item">
            <div class="btn-float-label">
              Disque 100
            </div>
            <v-icon>mdi-minus</v-icon>
          </div>
        </v-btn>
      </v-speed-dial>
  </v-app>
         <div id="map"></div>
     </div>
</template>

<style scoped>
.v-speed-dial {
  position: absolute;
}

.v-btn--floating {
  position: fixed;
}

.btn-float-item {
  display: flex;
  align-items: center;
}

.btn-float-label {
  right: 50px;
  height: 40px;
  line-height: 20px;
  position: absolute;
  background-color: #6C63FF;
  padding: 10px 20px;
  border-radius: 32px;
  -webkit-box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
  box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
}

.btn-float-position {
    position: relative;
    z-index: 9999;
}

.v-speed-dial__list {
    z-index: 9999 !important;
}
</style>

<script>
import GmapsAPi from 'google-maps-api-loader'
export default {
    name:"g-maps",
    props:["markers","propsCss","MapsDefaultUi"],
    data(){
        return {
            direction: 'top',
            fab: false,
            fling: false,
            hover: false,
            tabs: null,
            top: false,
            right: true,
            bottom: true,
            left: false,
            transition: 'slide-y-reverse-transition'
        }
    },
      computed: {
      activeFab () {
        switch (this.tabs) {
          case 'one': return { class: 'purple', icon: 'account_circle' }
          case 'two': return { class: 'red', icon: 'edit' }
          case 'three': return { class: 'green', icon: 'keyboard_arrow_up' }
          default: return {}
        }
      },
    },
    watch: {
      top (val) {
        this.bottom = !val
      },
      right (val) {
        this.left = !val
      },
      bottom (val) {
        this.top = !val
      },
      left (val) {
        this.right = !val
      },
    },
    methods:{
        InitMaps(){
    GmapsAPi({
        libraries: ['drawing'],
        apiKey: 'AIzaSyBP5msr8MgqErAFuod0sOZYrO5sKH9QElo' // optional
    }).then((googleApi) =>{
         navigator.geolocation.getCurrentPosition(data=>{
                let MapEl = document.getElementById('map');
                this.setStyleMap(MapEl)
                let map = new googleApi.maps.Map(MapEl, {
                center: {lat: data.coords.latitude, lng: data.coords.longitude},
                zoom: 8,
                disableDefaultUI: this.MapsDefaultUi
            });
                this.SetLocationUser(googleApi,map,data.coords.latitude,data.coords.longitude) 
                //seta o pontos no mapa
                this.SetMapMaker(googleApi,map)
            })

        }, (err) => {
            console.error(err);
        });
   },
   setStyleMap(map){
       let p = this.propsCss
       map.style.width = p.width;
       map.style.height= p.height;
   },
   SetMapMaker(GoogleApi,map){
     setTimeout(()=>{
      this.markers.map((pointMap)=>{
        var ponto = new GoogleApi.maps.LatLng(pointMap.lat,pointMap.lng);
        var marker = new GoogleApi.maps.Marker({
                position: ponto,//seta posição
                map: map,//Objeto mapa
                title:"Hello World!",//string que será exibida quando passar o mouse no marker
                icon:"https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png"
         });
      }) 
      },200)
       
   },
   SetLocationUser(GoogleApi,map,lat,lng){
       var ponto = new GoogleApi.maps.LatLng(lat,lng);
        var marker = new GoogleApi.maps.Marker({
                position: ponto,//seta posição
                map: map,//Objeto mapa,
                label:"Usuario",
                title:"Localizacao",//string que será exibida quando passar o mouse no marker
                // icon:"https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png"
         });
   
   }
  },
    mounted(){
        this.InitMaps();
        $('.v-application--wrap').removeClass();
        $('.v-speed-dial__list').css('z-index', '9999');
    }
}
</script>
