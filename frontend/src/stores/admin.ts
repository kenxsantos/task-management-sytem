import { defineStore } from 'pinia'
import axios from 'axios'

export const useAdminDashboardStore = defineStore('adminDashboard', {
  state: () => ({
    stats: { totalTasks: 0, completedTasks: 0, pendingTasks: 0 },
    users: [],
    pagination: {},
    loading: false,
  }),
  actions: {
    async fetchDashboard(page = 1) {
      this.loading = true
      try {
        const res = await axios.get(`/admin/dashboard?page=${page}`)
        this.stats = res.data.stats
        this.users = res.data.users.data
        this.pagination = {
          current_page: res.data.users.current_page,
          last_page: res.data.users.last_page,
        }
      } finally {
        this.loading = false
      }
    },
  },
})
