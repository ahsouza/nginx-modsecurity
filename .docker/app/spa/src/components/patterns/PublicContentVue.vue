<template>
  <div class="row">
    <grid-vue class="input-field" tamanho="12">
      <textarea v-model="content" class="materialize-textarea"></textarea>
      <label>Em que está pensando?</label>
    </grid-vue>
    <p>
      <grid-vue v-if="content" class="btn waves-effect waves-light" tamanho="2 offset-s10">PUBLICAR</grid-vue>
    </p>
  </div>

</template>

<script>
import GridVue from '@/components/layouts/GridVue'

export default {
  name: 'PublicContentVue',
  props:[],
  data () {
    return {
      content: ''
    }
  },
  components:{
    GridVue
  }
}
</script>
<style scoped>

</style>
