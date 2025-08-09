<!-- components/BaseInput.vue -->
<template>
  <div class="w-full">
    <label class="block mb-1 text-sm font-medium text-gray-700">
      {{ label }}
    </label>
    <input
      :type="type"
      :value="modelValue"
      @input="$emit('update:modelValue', $event.target.value)"
      :placeholder="placeholder"
      class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2"
      :class="error ? 'border-red-500 focus:ring-red-300' : 'border-gray-300 focus:ring-blue-500'"
    />
    <p v-if="error" class="mt-1 text-sm text-red-500">
      {{ error }}
    </p>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  label: string
  modelValue: string
  type?: string
  placeholder?: string
  error?: string
}>()

defineEmits(['update:modelValue'])
</script>
