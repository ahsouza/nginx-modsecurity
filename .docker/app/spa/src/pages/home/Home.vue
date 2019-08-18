<template>
  <SiteTemplate>

    <span slot="menu-left">
      <div class="row valign-wrapper">
        <grid-vue tamanho="4">
          <img src="http://materializecss.com/images/yuna.jpg" alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
        </grid-vue>
        <grid-vue tamanho="8">
          <span class="black-text">
            <h5>Aníbal Henrique</h5>
            Hii, I'm a Web Develop =}
          </span>
        </grid-vue>
      </div>
    </span>

    <span slot="main">
      <public-content-vue />
      <card-content-vue
      perfil="http://materializecss.com/images/yuna.jpg"
      nome="Aníbal Henrique"
      data="21/03/2019 16:52">
      <card-detail-vue
      img="https://materializecss.com/images/sample-1.jpg"
      txt="Jogo educacional causa vicío em escolas para ensino fundamental e médio em toda região da grande Vitória"
      title="A aplicação IQuizz é show!"
      />
      </card-content-vue>
    </span>

  </SiteTemplate>
</template>

<script>
import SiteTemplate from '@/templates/SiteTemplate'
import CardContentVue from '@/components/patterns/CardContentVue'
import CardDetailVue from '@/components/patterns/CardDetailVue'
import PublicContentVue from '@/components/patterns/PublicContentVue'

export default {
  name: 'Home',
  data () {
    return {

    }
  },
  components:{
    CardContentVue,
    SiteTemplate,
    CardDetailVue,
    PublicContentVue
  }
}
</script>
<style scoped>

</style>
