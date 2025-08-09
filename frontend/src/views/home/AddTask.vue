<script setup lang="ts">
import { ref } from 'vue'
import { useToast } from 'vue-toastification'
import { useTaskStore } from '@/stores/task'

const toast = useToast()
const taskStore = useTaskStore()


const newTask = ref({
  title: '',
  description: '',
  status: 'pending',
  priority: 'low',
})


const handleAddTask = async () => {
  try {
    await taskStore.addTask(newTask.value)
    toast.success('Task added successfully!')

    newTask.value = {
      title: '',
      description: '',
      status: 'pending',
      priority: 'low',
    }
  } catch (error) {
    toast.error('Failed to add task.')
    console.error(error)
  }
}
</script>

<template>
  <div class="max-w-4xl mx-auto mt-10">
    <h1 class="text-3xl font-bold mb-6">Task Dashboard</h1>

    <div class="mb-6 p-4 bg-white shadow rounded-md">
      <h2 class="text-xl font-semibold mb-4">Add New Task</h2>
      <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
        <input
          v-model="newTask.title"
          placeholder="Title"
          class="border p-2 rounded"
        />
        <input
          v-model="newTask.description"
          placeholder="Description"
          class="border p-2 rounded"
        />
        <select v-model="newTask.priority" class="border p-2 rounded">
          <option value="low">Low</option>
          <option value="medium">Medium</option>
          <option value="high">High</option>
        </select>
      </div>
      <button
        @click="handleAddTask"
        class="mt-4 bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700"
      >
        Add Task
      </button>
    </div>
  </div>
</template>
r
