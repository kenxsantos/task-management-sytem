<script setup lang="ts">
import { RouterLink } from 'vue-router'
</script>

<template>
  <div class="flex flex-col items-center justify-center  text-center">
    <h1 class="text-4xl font-extrabold text-gray-800 mb-4">
      Task Management System
    </h1>
    <p class="text-lg text-gray-600 mb-6">
      Organize your tasks, boost your productivity.
    </p>
    <RouterLink
      to="/login"
      class="inline-block px-6 py-3 bg-blue-600 text-white rounded-lg shadow hover:bg-blue-700 transition"
    >
      Get Started
    </RouterLink>
  </div>
</template>

<style scoped></style>
