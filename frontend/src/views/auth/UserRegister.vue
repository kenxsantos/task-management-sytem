<script setup lang="ts">
import { reactive } from 'vue'
import { useAuthStore } from '@/stores/auth'
import { useFormErrors } from '@/composables/useFormErrors.ts'
import InputField from '@/components/InputField.vue'
import ErrorAlert from '@/components/ErrorAlert.vue'
import { useRouter } from 'vue-router'

const auth = useAuthStore()
const router = useRouter()

const form = reactive({
  name: '',
  email: '',
  password: '',
  password_confirmation: '',
})

const { formErrors, generalError, setErrors, clearErrors } = useFormErrors()

const handleRegister = async () => {
  clearErrors()
  try {
    await auth.register(form)
    alert('Register successful!')
    router.push('/dashboard')
  } catch (error) {
    setErrors(error)
  }
}
</script>

<template>
  <div class="max-w-md mx-auto p-6 bg-white shadow-md rounded-md mt-10">
    <h2 class="text-2xl font-semibold text-center mb-6">Register</h2>

    <ErrorAlert :message="generalError" />

    <form @submit.prevent="handleRegister" class="space-y-4">
      <InputField
        label="Name"
        v-model="form.name"
        required
        :error="formErrors.name?.[0]"
      />

      <InputField
        label="Email"
        v-model="form.email"
        type="email"
        required
        :error="formErrors.email?.[0]"
      />

      <InputField
        label="Password"
        type="password"
        required
        v-model="form.password"
        :error="formErrors.password?.[0]"
      />

      <InputField
        label="Confirm Password"
        type="password"
        required
        v-model="form.password_confirmation"
        :error="formErrors.password_confirmation?.[0]"
      />

      <button
        type="submit"
        class="w-full px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700"
      >
        Register
      </button>
    </form>
    <p class="text-sm text-center text-gray-600">
        Already have an account?
        <RouterLink to="/login" class="text-blue-600 hover:underline">Login here</RouterLink>
      </p>
  </div>
</template>
