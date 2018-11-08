---
to: <%= path %>/<%= name %>/<%= name %>.vue
---
<template>
  <div class="<%= name %>">
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

interface IData {}

export default Vue.extend({
  data(): IData {
    return {}
  }
})
</script>

<style>
</style>
