export interface Task {
  id: number
  title: string
  description?: string
  status: 'pending' | 'completed'
  priority: 'low' | 'medium' | 'high'
  order: number
  user_id: number
  created_at: string
  updated_at: string
}
