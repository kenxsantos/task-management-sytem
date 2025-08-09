import { defineStore } from 'pinia'
import api from '@/api/api.ts'
import type { User } from '@/types/User'

interface AuthState {
  user: User | null
}

export const useAuthStore = defineStore('auth', {
  state: (): AuthState => ({
    user: null,
  }),

  actions: {
    async getUser() {
      const { data } = await api.get('api/user')
      this.user = data.data
    },

    async login(credentials: { email: string; password: string }) {
      await api.get('/sanctum/csrf-cookie')
      const { data } = await api.post('api/login', credentials)
      this.user = data.data
    },

    async register(form: {
      name: string
      email: string
      password: string
      password_confirmation: string
    }) {
      await api.get('/sanctum/csrf-cookie')
      const { data } = await api.post('api/register', form)
      this.user = data.data
    },

    async logout() {
      await api.post('api/logout')
      this.user = null
    },
  },
})
