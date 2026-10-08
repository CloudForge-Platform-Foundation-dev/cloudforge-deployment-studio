param(
    [string] = "cloudforge-dev-cluster"
)

Write-Host "=== CloudForge Local Kind Deployment ===" -ForegroundColor Cyan

# 1. ตรวจสอบว่ามี Kind หรือยัง
if (!(Get-Command kind -ErrorAction SilentlyContinue)) {
    Write-Error "Kind is not installed or not in PATH."
    exit 1
}

# 2. สร้าง Cluster ถ้ายางมี
 = kind get clusters
if ( -contains ) {
    Write-Host "Cluster '' already exists. Skipping creation." -ForegroundColor Yellow
} else {
    Write-Host "Creating Kind cluster: ..." -ForegroundColor Green
    kind create cluster --name 
}

# 3. Apply Namespaces และ RBAC
Write-Host "Applying Kubernetes manifests (Namespaces & RBAC)..." -ForegroundColor Green
kubectl apply -f kubernetes/namespaces/cloudforge-namespace.yaml
kubectl apply -f kubernetes/rbac/cloudforge-rbac.yaml

# 4. ทดสอบติดตั้ง Helm Umbrella Chart (Dry-run / Template check)
Write-Host "Verifying Helm umbrella chart templates..." -ForegroundColor Green
helm template cloudforge-platform helm/cloudforge-platform --namespace cloudforge-platform

Write-Host "=== Local Deployment Preparation Complete! ===" -ForegroundColor Green
