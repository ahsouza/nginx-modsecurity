<template>

  <LoginTemplate>
    <span slot="menu-left">
      <img src="https://i.pinimg.com/280x280_RS/65/69/56/656956ace2c3031518da07bcddf8b24b.jpg" class="responsive-img" alt="@ahsouza">
    </span>

    <span slot="main">
        <h2>Login </h2>
        <input type="text" placeholder="E-mail" value="">
        <input type="password" placeholder="Senha" value="">
        <button class="btn">ENTRAR</button>
        <router-link class="btn orange" to="/register">CADASTRE-SE</router-link>

    </span>

  </LoginTemplate>
</template>

<script>
import LoginTemplate from '@/templates/LoginTemplate'

export default {
  name: 'Home',
  data () {
    return {
    }
  },
  components:{
    LoginTemplate
  }
}
</script>

<style scoped>

</style>
