<script setup lang="ts">
import { onMounted } from 'vue'
import { storeToRefs } from 'pinia'
import { useAdminDashboardStore } from '@/stores/admin.ts'

const adminStore = useAdminDashboardStore()

const { stats, users, pagination, loading } = storeToRefs(adminStore)

const fetchDashboardData = async (page = 1) => {
  await adminStore.fetchDashboard(page)
}

onMounted(() => {
  fetchDashboardData()
})

const changePage = (page: number) => {
  if (page >= 1 && page <= pagination.value.last_page) {
    fetchDashboardData(page)
  }
}
</script>

<template>
  <div class="p-6">
    <h1 class="text-2xl font-bold mb-4">Admin Dashboard</h1>

    <!-- Stats Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-6">
      <div class="bg-white p-4 rounded-lg shadow text-center">
        <h2 class="text-lg font-semibold">Total Tasks</h2>
        <p class="text-2xl font-bold">{{ stats.totalTasks }}</p>
      </div>
      <div class="bg-white p-4 rounded-lg shadow text-center">
        <h2 class="text-lg font-semibold text-green-600">Completed</h2>
        <p class="text-2xl font-bold">{{ stats.completedTasks }}</p>
      </div>
      <div class="bg-white p-4 rounded-lg shadow text-center">
        <h2 class="text-lg font-semibold text-yellow-600">Pending</h2>
        <p class="text-2xl font-bold">{{ stats.pendingTasks }}</p>
      </div>
    </div>

    <!-- Loading State -->
    <div v-if="loading" class="text-center py-4">Loading...</div>

    <!-- Users Table -->
    <div v-else class="overflow-x-auto bg-white rounded-lg shadow">
      <table class="min-w-full text-left">
        <thead class="bg-gray-100">
          <tr>
            <th class="px-4 py-2">User</th>
            <th class="px-4 py-2">Total Tasks</th>
            <th class="px-4 py-2 text-green-600">Completed</th>
            <th class="px-4 py-2 text-yellow-600">Pending</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="user in users" :key="user.id" class="border-b">
            <td class="px-4 py-2">{{ user.name }}</td>
            <td class="px-4 py-2">{{ user.total_tasks }}</td>
            <td class="px-4 py-2">{{ user.completed_tasks }}</td>
            <td class="px-4 py-2">{{ user.pending_tasks }}</td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Pagination -->
    <div class="flex justify-center mt-4 space-x-2">
      <button
        class="px-4 py-2 bg-gray-200 rounded"
        :disabled="pagination.current_page === 1"
        @click="changePage(pagination.current_page - 1)"
      >
        Prev
      </button>
      <span>Page {{ pagination.current_page }} of {{ pagination.last_page }}</span>
      <button
        class="px-4 py-2 bg-gray-200 rounded"
        :disabled="pagination.current_page === pagination.last_page"
        @click="changePage(pagination.current_page + 1)"
      >
        Next
      </button>
    </div>
  </div>
</template>

<style scoped>
table th,
table td {
  padding: 0.75rem;
}
</style>
