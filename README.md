# 🚀 CloudForge Deployment Studio

[![Validate Deployment Studio](https://github.com/CloudForge-Platform-Foundation-dev/cloudforge-deployment-studio/actions/workflows/validate.yml/badge.svg)](https://github.com/CloudForge-Platform-Foundation-dev/cloudforge-deployment-studio/actions/workflows/validate.yml)

**Central orchestration repository for CloudForge platform architecture, combining Terraform, Kubernetes, and Helm.**

---

## 📖 Overview

CloudForge Deployment Studio เป็นศนย์กลางในการจัดการ Infrastructure และ Deployment ของ CloudForge Platform โดยออกแบบมาเพื่อให้:
- ✅ Deploy ได้ทั้ง **Local (Kind)** และ **Production (AWS EKS)**
- ✅ ใช้ **Helm Umbrella Chart** รวม Microservices ทั้งหมด (Identity, Ingest, Knowledge, Nova, Security)
- ✅ เชื่อมต่อกับ **Foundation Validation** เพื่อบังคับใช้ Governance Gate ใน CI/CD
- ✅ รองรับ **RBAC** และ **Namespace Isolation** ตามมาตราน Enterprise

---

## 📂 Directory Structure

