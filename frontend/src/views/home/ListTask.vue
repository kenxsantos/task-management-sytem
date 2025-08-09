<script setup lang="ts">
import { ref, computed, onMounted } from 'vue'
import { useTaskStore } from '@/stores/task'
import { useToast } from 'vue-toastification'
import draggable from 'vuedraggable'

const taskStore = useTaskStore()
const toast = useToast()

const statusFilter = ref('all')
const priorityFilter = ref('all')
const searchQuery = ref('')

onMounted(async () => {
  try {
    await taskStore.fetchTasks()
  } catch (error) {
    toast.error('Failed to fetch tasks')
  }
})

const toggleStatus = async (task: any) => {
  try {
    const updatedStatus = task.status === 'completed' ? 'pending' : 'completed'
    await taskStore.updateTask(task.id, { status: updatedStatus })
    toast.success('Task status updated!')
  } catch (error) {
    toast.error('Failed to update task status')
  }
}


const filteredTasks = computed(() => {
  return taskStore.tasks.filter((task) => {
    const matchStatus =
      statusFilter.value === 'all' || task.status === statusFilter.value
    const matchPriority =
      priorityFilter.value === 'all' || task.priority === priorityFilter.value
    const matchSearch =
      task.title.toLowerCase().includes(searchQuery.value.toLowerCase()) ||
      task.description.toLowerCase().includes(searchQuery.value.toLowerCase())

    return matchStatus && matchPriority && matchSearch
  })
})

const onReorder = async () => {
  try {
    await taskStore.reorderTasks()
    toast.success('Tasks reordered!')
  } catch (error) {
    toast.error('Failed to reorder tasks')
  }
}
</script>

<template>
  <div class="max-w-4xl mx-auto py-10">
    <h1 class="text-3xl font-bold mb-6">All Tasks</h1>

    <!-- Filters -->
    <div class="flex flex-col md:flex-row gap-4 mb-6">
      <input
        v-model="searchQuery"
        type="text"
        placeholder="Search tasks..."
        class="border px-4 py-2 rounded w-full md:w-1/2"
      />
      <select v-model="statusFilter" class="border px-4 py-2 rounded w-full md:w-1/4">
        <option value="all">All Statuses</option>
        <option value="pending">Pending</option>
        <option value="completed">Completed</option>
      </select>
      <select v-model="priorityFilter" class="border px-4 py-2 rounded w-full md:w-1/4">
        <option value="all">All Priorities</option>
        <option value="low">Low</option>
        <option value="medium">Medium</option>
        <option value="high">High</option>
      </select>
    </div>

    <!-- Tasks -->
    <div v-if="taskStore.loading" class="text-gray-500">Loading tasks...</div>

    <div v-else-if="filteredTasks.length === 0" class="text-gray-500">
      No tasks found.
    </div>

    <draggable
      v-model="filteredTasks"
      item-key="id"
      @end="onReorder"
      tag="ul"
      class="space-y-4"
    >
      <template #item="{ element: task }">
        <li
          :key="task.id"
          class="p-4 border border-gray-200 rounded shadow-sm bg-white flex items-start justify-between"
        >
          <div class="flex items-center gap-3">
            <input
              type="checkbox"
              :checked="task.status === 'completed'"
              @change="toggleStatus(task)"
              class="mt-1"
            />
            <div>
              <h2
                class="text-lg font-semibold"
                :class="{ 'line-through text-gray-400': task.status === 'completed' }"
              >
                {{ task.title }}
              </h2>
              <p class="text-sm text-gray-600">{{ task.description }}</p>
              <div class="text-sm mt-1 flex gap-2">
                <span class="font-semibold">Status:</span> {{ task.status }}
                <span
                  class="px-2 py-0.5 rounded text-xs font-semibold"
                  :class="{
                    'bg-green-100 text-green-700': task.priority === 'low',
                    'bg-yellow-100 text-yellow-700': task.priority === 'medium',
                    'bg-red-100 text-red-700': task.priority === 'high'
                  }"
                >
                  {{ task.priority }}
                </span>
              </div>
            </div>
          </div>
        </li>
      </template>
    </draggable>
  </div>
</template>
