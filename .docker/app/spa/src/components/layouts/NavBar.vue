<template>
  <nav :class="cor || 'green accent-2'">
    <div class="nav-wrapper container">
      <router-link :to="url || '/'" class="brand-logo">{{ logo || 'Sua Logo' }}</router-link>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <slot />
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'NavBar',
  props: ['logo', 'url', 'cor'],
  data () {
    return {

    }
  }
}
</script>

<style scoped>

</style>
