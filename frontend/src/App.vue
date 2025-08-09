<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
import { computed } from "vue";
import { storeToRefs } from "pinia";
import { useAuthStore } from "@/stores/auth";

const auth = useAuthStore();
const { user } = storeToRefs(auth);

const logout = async () => {
  try {
    await auth.logout
    user.value = null
    window.location.href = '/login'
    alert('Logout Successfully')
  } catch (error) {
    console.error('Logout failed:', error)
  }
}
const navLinks = computed(() => {
  if (!user.value) {
    return [
      { name: "Login", to: "/login" },
      { name: "Register", to: "/register" },
    ];
  }
  return [
    { name: "Dashboard", to: "/dashboard" },
    { name: "Logout", action: logout },
  ];
});
</script>

<template>
  <header class="bg-white shadow">
    <nav class="max-w-7xl mx-auto flex items-center justify-between px-6 py-4">
      <RouterLink
        to="/"
        class="text-xl font-bold text-blue-600 hover:text-blue-700"
      >
        Task Management System
      </RouterLink>
      <div class="flex gap-6 text-lg font-medium items-center">
        <template v-for="link in navLinks" :key="link.name">
          <RouterLink
            v-if="link.to"
            :to="link.to"
            class="text-gray-600 hover:text-blue-600 transition"
          >
            {{ link.name }}
          </RouterLink>

          <button
            v-else
            @click="link.action"
            class="text-gray-600 hover:text-gray-200 transition py-2 px-4 bg-red-500 text-white rounded-sm"
          >
            {{ link.name }}
          </button>
        </template>
      </div>
    </nav>
  </header>

  <main class="p-6">
    <RouterView />
  </main>
</template>
