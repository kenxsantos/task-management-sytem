
<script setup lang="ts">
import { reactive } from 'vue'
import { useAuthStore } from '@/stores/auth'
import { useFormErrors } from '@/composables/useFormErrors.ts'
import InputField from '@/components/InputField.vue'
import ErrorAlert from '@/components/ErrorAlert.vue'
import { useRouter } from 'vue-router'
import { useTaskStore } from '@/stores/task.ts'

const taskStore = useTaskStore()
const auth = useAuthStore()
const router = useRouter()

const form = reactive({
  email: '',
  password: ''
})

const { formErrors, generalError, setErrors, clearErrors } = useFormErrors()

const handleLogin = async () => {
  clearErrors()

  try {
    await auth.login(form)
    alert('Login successful!')
    if (auth.user && auth.user.id) {
      taskStore.listenForTasks(auth.user.id)
    }
    router.push('/dashboard')
  } catch (error) {
    setErrors(error)
  }
}
</script>


<template>
  <div class="max-w-md mx-auto p-6 bg-white shadow-md rounded-md mt-10">
      <h2 class="text-2xl font-bold text-center text-gray-800">Login to Your Account</h2>
      <form @submit.prevent="handleLogin" class="space-y-4">
        <ErrorAlert :message="generalError" />
         <InputField
          label="Email"
          required
          v-model="form.email"
          :error="formErrors.email?.[0]"
        />
        <InputField
          label="Password"
          type="password"
          required
          v-model="form.password"
          :error="formErrors.password?.[0]"
        />
        <button
          type="submit"
          class="w-full px-4 py-2 font-semibold text-white bg-blue-600 rounded-md hover:bg-blue-700 disabled:opacity-50"
        >
          Log in
        </button>
      </form>

      <p class="text-sm text-center text-gray-600">
        Don't have an account?
        <RouterLink to="/register" class="text-blue-600 hover:underline">Register here</RouterLink>
      </p>
  </div>
</template>
