import { ref } from 'vue'

const formErrors = ref<Record<string, string[]>>({})
const generalError = ref<string | null>(null)

export function useFormErrors() {
  function setErrors(error: any) {
    formErrors.value = {}
    generalError.value = null

    if (error.response) {
      const { status, data } = error.response

      if (status === 422 && data.errors) {
        formErrors.value = data.errors
      } else if (data.message) {
        generalError.value = data.message
      } else {
        generalError.value = 'Something went wrong. Please try again.'
      }
    } else {
      generalError.value = 'Server is unreachable.'
    }
  }

  function clearErrors() {
    formErrors.value = {}
    generalError.value = null
  }

  return {
    formErrors,
    generalError,
    setErrors,
    clearErrors,
  }
}
