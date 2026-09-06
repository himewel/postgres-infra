terraform {
  required_version = ">= 1.5.0"

  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.22"
    }
  }
}

provider "postgresql" {
  host            = var.pg_host
  port            = var.pg_port
  database        = var.pg_database
  username        = var.pg_username
  password        = var.pg_password
  sslmode         = var.pg_sslmode
  superuser       = true
  connect_timeout = 15
}
