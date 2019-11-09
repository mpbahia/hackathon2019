<template>
  <div class="overlay">
    <div class="modal-help" :class="{none: !isNext === false}">
      <h3>Ajuda rápida</h3>
      <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam.</p>
      <div class="modal-card-wrap">
        <button class="modal-card-item active">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
      </div>
      <button class="btn-next" @click="isNext = true">Próximo</button>
    </div>
    <div class="modal-help" v-show="isNext" :class="{none: !isNext}">
      <h3>Ajuda rápida</h3>
      <p>Dê uma breve descrição do que está acontecendo para podermos te ajudar</p>
      <div class="modal-card-wrap">
        <button class="modal-card-item active">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
        <button class="modal-card-item">
          Violência Física
        </button>
      </div>
    </div>
  </div>
</template>

<style scoped>
.overlay {
  background-color: rgba(65, 53, 88, .8);
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}

.modal-help {
  background-color: #fff;
  padding: 20px;
  position: relative;
  z-index: 1000;
  bottom: 0;
  border-radius: 23px 23px 0 0;
  display: flex;
  flex-direction: column;
}

.modal-card-wrap {
  display: flex;
  overflow-x: auto;
  margin: 30px 0;
}

.modal-card-item {
  background-color: #F9F9FF;
  border-radius: 21px;
  padding: 20px;
  min-width: 140px;
  height: 200px;
  margin-right: 20px;
  display: flex;
  align-items: center;
  text-align: left;
}

.modal-card-item.active {
  border: 3px solid #6C63FF;
}

.btn-next {
  background-color: #6C63FF;
  padding: 10px 20px;
  color: #fff;
  border-radius: 21px;
  margin-left: auto;
}
.none {
  display: none;
}
</style>

<script>

export default {
  data() {
    return {
      isNext: false,
    };
  },
  methods: {},
  mounted() {

  }
};
</script>
