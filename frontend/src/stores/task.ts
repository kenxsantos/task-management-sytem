import { defineStore } from 'pinia'
import api from '@/api/api'
import Echo from 'laravel-echo'
import Pusher from 'pusher-js'
import type { Task } from '@/types/Task'

window.Pusher = Pusher
window.Echo = new Echo({
  broadcaster: 'pusher',
  key: import.meta.env.VITE_PUSHER_APP_KEY,
  cluster: import.meta.env.VITE_PUSHER_APP_CLUSTER,
  forceTLS: true,
  encrypted: true,
})

export const useTaskStore = defineStore('task', {
  state: () => ({
    tasks: [] as Task[],
    loading: false,
    echoInitialized: false,
  }),

  actions: {
    async fetchTasks(status?: string, priority?: string) {
      try {
        this.loading = true
        const params: any = {}
        if (status) params.status = status
        if (priority) params.priority = priority

        await api.get('/sanctum/csrf-cookie')
        const response = await api.get('api/tasks', { params })
        this.tasks = Array.isArray(response.data) ? response.data : []
      } catch (error) {
        console.error('Error fetching tasks:', error)
        throw error
      } finally {
        this.loading = false
      }
    },

    async addTask(taskData: Task) {
      try {
        await api.get('/sanctum/csrf-cookie')
        const response = await api.post('api/tasks', taskData)
        this.tasks.push(response.data)
      } catch (error) {
        console.error('Error adding task:', error)
        throw error
      }
    },

    async updateTask(id: number, taskData: Partial<Task>) {
      try {
        await api.get('/sanctum/csrf-cookie')
        const response = await api.put(`api/tasks/${id}`, taskData)
        const index = this.tasks.findIndex((t) => t.id === id)
        if (index !== -1) this.tasks[index] = response.data
      } catch (error) {
        console.error('Error updating task:', error)
        throw error
      }
    },

    async deleteTask(id: number) {
      try {
        await api.get('/sanctum/csrf-cookie')
        await api.delete(`api/tasks/${id}`)
        this.tasks = this.tasks.filter((t) => t.id !== id)
      } catch (error) {
        console.error('Error deleting task:', error)
        throw error
      }
    },

    async reorderTasks() {
      try {
        await api.get('/sanctum/csrf-cookie')
        const orderedIds = this.tasks.map((task, index) => ({
          id: task.id,
          order: index,
        }))
        await api.post('api/tasks/reorder', { tasks: orderedIds })
      } catch (error) {
        console.error('Reorder failed', error)
        throw error
      }
    },

    listenForTaskEvents(userId: number) {
      if (this.echoInitialized) return
      this.echoInitialized = true

      window.Echo.private(`tasks.${userId}`)
        .listen('.task.created', (e: { task: Task }) => {
          if (!this.tasks.find((t) => t.id === e.task.id)) {
            this.tasks.push(e.task)
          }
        })
        .listen('.task.updated', (e: { task: Task }) => {
          const index = this.tasks.findIndex((t) => t.id === e.task.id)
          if (index !== -1) {
            this.tasks[index] = e.task
          }
        })
        .listen('.task.deleted', (e: { taskId: number }) => {
          this.tasks = this.tasks.filter((t) => t.id !== e.taskId)
        })
    },
  },
})
