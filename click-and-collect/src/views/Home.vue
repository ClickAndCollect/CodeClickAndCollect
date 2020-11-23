<template>
  <div class="home">
    <v-presentation></v-presentation>
  </div>
</template>

<script>
import VPresentation from '../components/VPresentation .vue'
// @ is an alias to /src
export default {
  name: 'Home',
  components: {
    VPresentation,
  }
}
</script>