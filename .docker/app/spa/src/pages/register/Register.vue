<template>

  <LoginTemplate>
    <span slot="menu-left">
      <img src="https://i.pinimg.com/280x280_RS/65/69/56/656956ace2c3031518da07bcddf8b24b.jpg" class="responsive-img" alt="@ahsouza">
    </span>

    <span slot="main">


        <h2>Create Account </h2>
        <input type="text" placeholder="Nome" value="">
        <input type="text" placeholder="E-mail" value="">
        <input type="password" placeholder="Senha" value="">
        <input type="password" placeholder="Confirme sua senha" value="">
        <button class="btn">ENVIAR</button>
        <router-link class="btn orange" to="/login">JÁ TENHO UMA CONTA</router-link>

    </span>

  </LoginTemplate>
</template>

<script>
import LoginTemplate from '@/templates/LoginTemplate'

export default {
  name: 'Register',
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
