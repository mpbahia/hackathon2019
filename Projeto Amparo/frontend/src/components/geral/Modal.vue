<template>
    <div class="modal" :class="{'is-active':active}">
  <div class="modal-background"></div>
  <div class="modal-content">
      <slot></slot>
  </div>
  <button class="modal-close is-large" aria-label="close" @click="isActive=false"></button>
</div>
</template>

<script>
export default {
    name:"modal",
    props:['isActive'],
    data(){
       return {}
    },
    computed:{
        active(){
            if(this.isActive)
                return true
            else
                return false
        }
    }
}
</script>