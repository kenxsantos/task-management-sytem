import axios from 'axios'

axios.defaults.withCredentials = true
axios.defaults.withXSRFToken = true

const api = axios.create({
  baseURL: 'http://localhost:8000',
  withCredentials: true,
  headers: {
    Accept: 'application/json',
    'Content-Type': 'application/json',
  },
})

export default api
