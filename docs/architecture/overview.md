# CloudForge Deployment Studio Architecture

## Overview
The Deployment Studio serves as the orchestration layer for the CloudForge platform, bringing together Infrastructure as Code (Terraform), Kubernetes manifests, and Helm charts under unified governance.

## Components
- **Terraform:** Manages underlying cloud infrastructure and provisioned environments.
- **Kubernetes:** Defines cluster resources, namespaces, RBAC, and security policies.
- **Helm:** Packages individual studios (Identity, Ingest, Knowledge, Nova, Security) into an Umbrella Chart for streamlined releases.
