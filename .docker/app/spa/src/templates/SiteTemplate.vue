<template>
  <span>
    <header>
      <nav-bar logo="Social" url="# /" cor="green darken-1" >
        <li><router-link to="/">Home</router-link></li>
        <li><router-link to="/login">Entrar</router-link></li>
        <li><router-link to="/contato">Contato</router-link></li>
        <li><router-link to="/portfolio">Portfólio</router-link></li>
        <li><a href="sass.html"><i class="material-icons">search</i></a></li>
        <li><a href="mobile.html"><i class="material-icons">more_vert</i></a></li>
      </nav-bar>
    </header>

    <main>
      <div class="container">
        <div class="row">
          <grid-vue tamanho="4">
            <card-menu-vue>
              <div class="row valign-wrapper">
                <slot name="menu-left" />
              </div>
            </card-menu-vue>
            <card-menu-vue>
              <h3>Teste</h3>
            </card-menu-vue>
          </grid-vue>
          <grid-vue tamanho="8">
            <slot name="main" />
          </grid-vue>

        </div>
      </div>
    </main>

    <footer-vue cor="green darken-1" logo="Social" descricao="Sua de descrição" ano="2019">

      <li><a class="grey-text text-lighten-3" href="#!">Home</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
      <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>

    </footer-vue>


  </span>
</template>

<script>
import NavBar from '@/components/layouts/NavBar'
import FooterVue from '@/components/layouts/FooterVue'
import GridVue from '@/components/layouts/GridVue'
import CardMenuVue from '@/components/layouts/CardMenuVue'

export default {
  name: 'SiteTemplate',
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
