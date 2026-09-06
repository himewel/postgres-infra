variable "pg_host" {
  description = "PostgreSQL host (Docker Compose service maps to localhost)"
  type        = string
  default     = "localhost"
}

variable "pg_port" {
  description = "PostgreSQL port"
  type        = number
  default     = 5432
}

variable "pg_database" {
  description = "Database to connect to for management"
  type        = string
  default     = "postgres"
}

variable "pg_username" {
  description = "Superuser created by postgres/init (admin)"
  type        = string
  default     = "admin"
}

variable "pg_password" {
  description = "Password for the admin superuser"
  type        = string
  sensitive   = true
  default     = "admin"
}

variable "pg_sslmode" {
  description = "libpq SSL mode (disable for local Docker)"
  type        = string
  default     = "disable"
}

variable "app_database_name" {
  description = "Application database managed by Terraform"
  type        = string
  default     = "app"
}

variable "app_role_name" {
  description = "Application role managed by Terraform"
  type        = string
  default     = "app_user"
}

variable "app_role_password" {
  description = "Password for the application role"
  type        = string
  sensitive   = true
  default     = "app_user"
}
