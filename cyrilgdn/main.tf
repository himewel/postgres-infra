# Manage PostgreSQL objects on the Docker Compose image via cyrilgdn/postgresql,
# authenticating as the admin superuser created in postgres/init.

resource "postgresql_database" "app" {
  name  = var.app_database_name
  owner = postgresql_role.app_user.name
}

resource "postgresql_role" "app_user" {
  name     = var.app_role_name
  login    = true
  password = var.app_role_password
}

resource "postgresql_grant" "app_user_connect" {
  database    = postgresql_database.app.name
  role        = postgresql_role.app_user.name
  object_type = "database"
  privileges  = ["CONNECT", "CREATE", "TEMPORARY"]
}

resource "postgresql_schema" "app" {
  name     = "app"
  database = postgresql_database.app.name
  owner    = postgresql_role.app_user.name
}
