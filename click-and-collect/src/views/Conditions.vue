<template>
  <div class="cgv">
    <v-conditions></v-conditions>
    <v-footer></v-footer>
  </div>
</template>

<script>
import VConditions from '../components/VConditions.vue'
import VFooter from '../components/VFooter.vue'
export default {
  components: {
    VConditions,
    VFooter,
  }
}
</script>