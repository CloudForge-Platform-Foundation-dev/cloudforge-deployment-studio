param(
    [string]$clusterName = 'cloudforge-dev-cluster'
)

$clusters = kind get clusters

if ($clusters -contains $clusterName) {
    Write-Host "Cluster '$clusterName' already exists. Skipping creation." -ForegroundColor Yellow
} else {
    Write-Host "Creating Kind cluster: $clusterName..." -ForegroundColor Green
    kind create cluster --name $clusterName
}
