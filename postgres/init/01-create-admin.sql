-- Create a dedicated admin role with full superuser privileges.
-- Runs once on first database initialization via /docker-entrypoint-initdb.d.

DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'admin') THEN
    CREATE ROLE admin WITH
      LOGIN
      SUPERUSER
      CREATEDB
      CREATEROLE
      REPLICATION
      BYPASSRLS
      PASSWORD 'admin';
  END IF;
END
$$;

COMMENT ON ROLE admin IS 'Local Docker admin superuser for Terraform (cyrilgdn/postgresql) management';
