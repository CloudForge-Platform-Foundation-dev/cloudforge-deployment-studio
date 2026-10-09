# CloudForge Deployment Contract

## 1. Scope & Standards
- All services (Identity, Ingest, Knowledge, Nova, Security) must adhere to standardized health checks and JWT verification via JWKS.
- Helm charts must support environment-specific values files (values-dev.yaml, values-prod.yaml).

## 2. Security & Compliance
- Secrets must not be hardcoded in manifests or charts; they are injected via secure runtime environments.
- RBAC policies must enforce least-privilege access across namespaces.
