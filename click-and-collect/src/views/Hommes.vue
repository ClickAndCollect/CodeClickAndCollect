<template>
  <div class="hommes">
    <v-homme></v-homme>
    <v-footer></v-footer>
  </div>
</template>

<script>
import VHomme from '../components/VHomme.vue'
import VFooter from '../components/VFooter.vue'
export default {
  components: {
    VHomme,
    VFooter,
  }
}
</script>