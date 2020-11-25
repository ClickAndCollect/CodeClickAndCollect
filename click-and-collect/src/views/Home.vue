<template>
  <div class="home">
    <v-presentation></v-presentation>
    <v-footer></v-footer>
  </div>
</template>

<script>
import VFooter from '../components/VFooter.vue'
import VPresentation from '../components/VPresentation .vue'
// @ is an alias to /src


export default {
  name: 'Home',
  components: {
    VPresentation,
    VFooter,
  }
}
</script>
