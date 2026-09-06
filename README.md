# postgres-infra

Docker Compose PostgreSQL (Alpine) plus Terraform management via [`cyrilgdn/postgresql`](https://registry.terraform.io/providers/cyrilgdn/postgresql).

## Layout

- `docker-compose.yml` — `postgres:16-alpine`
- `postgres/init/` — creates the `admin` superuser on first boot
- `infra/` — Terraform project that connects as `admin` and manages DB objects

## Quick start

```bash
cp .env.example .env
docker compose up -d

cd infra
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform apply
```

Default local credentials (change before any non-local use):

| Role | Password | Notes |
|------|----------|--------|
| `postgres` | `postgres` | Image bootstrap superuser |
| `admin` | `admin` | Init-script superuser used by Terraform |
