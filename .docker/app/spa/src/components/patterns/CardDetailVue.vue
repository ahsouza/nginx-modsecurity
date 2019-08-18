<template>

  <span>
    <div v-if="img" class="card-image">
      <img :src="img">
      <span class="card-title">{{ title || 'Título' }}</span>
    </div>

    <div v-if="txt"  class="card-content">
      <p>{{ txt || 'Texto'}}</p>
    </div>
  </span>

</template>

<script>
export default {
  name: 'CardDetailVue',
  props:['img', 'title', 'txt'],
  data () {
    return {

    }
  }
}
</script>
<style scoped>

</style>
