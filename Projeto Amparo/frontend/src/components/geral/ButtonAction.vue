<template>
  <div class="content-maps">
    <!-- <modal-ajuda></modal-ajuda> -->
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
          <v-btn v-model="fab" color="blue" dark fab class="btn-float-position">
            <v-icon v-if="fab">mdi-close</v-icon>
            <v-icon v-else>mdi-bullhorn</v-icon>
          </v-btn>
        </template>
        <v-btn fab dark small color="blue">
          <div class="btn-float-item">
            <div class="btn-float-label">
              Ajuda rápida
            </div>
            <v-icon>mdi-minus</v-icon>
          </div>
        </v-btn>
        <v-btn fab dark small color="blue">
          <div class="btn-float-item">
            <div class="btn-float-label">
              Denúncia
            </div>
            <v-icon>mdi-minus</v-icon>
          </div>
        </v-btn>
        <v-btn fab dark small color="blue">
          <div class="btn-float-item">
            <div class="btn-float-label">
              Disque 100
            </div>
            <v-icon>mdi-minus</v-icon>
          </div>
        </v-btn>
      </v-speed-dial>
    </v-app>
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
  background-color: #6c63ff;
  padding: 10px 20px;
  border-radius: 32px;
  -webkit-box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2),
    0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
  box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2),
    0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
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
import GmapsAPi from "google-maps-api-loader";
export default {
  data() {
    return {
      direction: "top",
      fab: false,
      fling: false,
      hover: false,
      tabs: null,
      top: false,
      right: true,
      bottom: true,
      left: false,
      transition: "slide-y-reverse-transition"
    };
  },
  computed: {
    activeFab() {
      switch (this.tabs) {
        case "one":
          return { class: "purple", icon: "account_circle" };
        case "two":
          return { class: "red", icon: "edit" };
        case "three":
          return { class: "green", icon: "keyboard_arrow_up" };
        default:
          return {};
      }
    }
  },
  watch: {
    top(val) {
      this.bottom = !val;
    },
    right(val) {
      this.left = !val;
    },
    bottom(val) {
      this.top = !val;
    },
    left(val) {
      this.right = !val;
    }
  },
  methods: {},
  mounted() {
    $(".v-application--wrap").removeClass();
    $(".v-speed-dial__list").css("z-index", "9999");
  }
};
</script>
