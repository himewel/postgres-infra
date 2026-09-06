output "app_database" {
  description = "Managed application database name"
  value       = postgresql_database.app.name
}

output "app_role" {
  description = "Managed application role name"
  value       = postgresql_role.app_user.name
}

output "app_schema" {
  description = "Managed application schema"
  value       = postgresql_schema.app.name
}
