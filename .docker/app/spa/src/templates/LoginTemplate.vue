<template>
  <span>
    <header>
      <nav-bar logo="Social" url="#/" cor="grey darken-4">
        <li><router-link to="/">Home</router-link></li>
        <li><router-link to="/register">Cadastre-se</router-link></li>
        <li><a href="sass.html"><i class="material-icons">search</i></a></li>
        <li><a href="mobile.html"><i class="material-icons">more_vert</i></a></li>
      </nav-bar>
    </header>

    <main>
      <div class="container">
        <div class="row">
          <grid-vue tamanho="6">
              <slot name="menu-left" />
          </grid-vue>

          <grid-vue tamanho="6">
            <CardMenuVue>
              <slot name="main" />
            </CardMenuVue >
          </grid-vue>

        </div>
      </div>
    </main>

    <footer-vue cor="grey darken-3" logo="Social" descricao="Teste de descrição" ano="2019">

      <li><a class="grey-text text-lighten-3" href="#!">Home</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Contato</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Portfolio</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Cases</a></li>

    </footer-vue>


  </span>
</template>

<script>
import NavBar from '@/components/layouts/NavBar'
import FooterVue from '@/components/layouts/FooterVue'
import GridVue from '@/components/layouts/GridVue'
import CardMenuVue from '@/components/layouts/CardMenuVue'

export default {
  name: 'LoginTemplate',
  components:{
    NavBar,
    FooterVue,
    GridVue,
    CardMenuVue
  }
}
</script>

<style>

</style>
