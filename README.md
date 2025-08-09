# 📝 Task Management System

A full-stack task management system built with **Laravel 12** (Sanctum, Service Layer, Repository Pattern) and **Vue 3** (Composition API, Pinia, TailwindCSS).  
The system includes authentication, role-based access (Admin/User), task CRUD, filtering, sorting, and real-time updates.

---

## 🚀 Features

- **Authentication & Authorization** (Laravel Sanctum)
- **Task Management** (CRUD, filtering, ordering)
- **Role-Based Access Control**
- **Admin Dashboard** (user/task statistics)
- **Responsive Frontend** with TailwindCSS
- **State Management** using Pinia
- **Repository + Service Layer** architecture
- **API Documentation** with Postman

---

## 🛠️ Tech Stack

- **Backend:** Laravel 12, PHP 8+, Laravel Sanctum
- **Frontend:** Vue 3, Pinia, TailwindCSS
- **Database:** MySQL
- **Other:** Composer, NPM

---

## 📦 Installation & Setup

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/your-username/task-management-system.git
cd task-management-system
```

### 2️⃣ Backend Setup (Laravel)
```bash
cd backend
cp .env.example .env
composer install
php artisan key:generate
php artisan migrate --seed
php artisan serve
```

### 3️⃣ Frontend Setup (Vue)
``` bash
cd frontend
cp .env.example .env
npm install
npm run dev
```

### 4️⃣ Laravel .env
```bash
APP_NAME="Task Management System"
APP_ENV=local
APP_KEY=base64:generated-key
APP_DEBUG=true
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=task_management
DB_USERNAME=root
DB_PASSWORD=

SANCTUM_STATEFUL_DOMAINS=localhost:5173
SESSION_DOMAIN=localhost
```

### 5️⃣ Vue .env
``` bash
VITE_API_BASE_URL=http://localhost:8000
VITE_PUSHER_APP_KEY=generate_your_own_key
VITE_PUSHER_APP_CLUSTER=mt1
```

# 📄 API Documentation

API endpoints are documented using **Postman**.

- **Postman Collection Link:** [View API Documentation](https://.postman.co/workspace/My-Workspace~5d28b571-706a-4153-8630-e90751033ba6/collection/31087798-dc95dab1-e8f6-48f2-948a-7c46144923b0?action=share&creator=31087798)  
  *(Replace `#` with your actual Postman collection URL)*

- **Exported JSON:** See `/assets/Task Management API.postman_collection.json`

---

## Endpoints Overview

| Method | Endpoint                  | Description             | Auth Required  |
|--------|---------------------------|-------------------------|----------------|
| POST   | `/api/login`              | Login user              | No             |
| POST   | `/api/register`           | Register new user       | No             |
| POST   | `/api/logout`             | Logout user             | Yes            |
| GET    | `/api/user`               | Get authenticated user  | Yes            |
| GET    | `/api/tasks`              | List tasks              | Yes            |
| POST   | `/api/tasks`              | Create task             | Yes            |
| GET    | `/api/tasks/{id}`         | Show task               | Yes            |
| PUT    | `/api/tasks/{id}`         | Update task             | Yes            |
| DELETE | `/api/tasks/{id}`         | Delete task             | Yes            |
| GET    | `/api/admin/dashboard`    | Admin dashboard stats   | Yes (Admin)    |

---




