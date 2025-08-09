<template>
  <div v-if="message" class="p-2 bg-red-100 text-red-700 rounded">
    {{ message }}
  </div>
</template>

<script setup lang="ts">
defineProps<{ message: string | null }>()
</script>
