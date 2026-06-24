```bash
#!/bin/bash

# ==========================================================
# Script Name : install_minikube.sh
# Description : Install Minikube & kubectl on Ubuntu 24.04
# Author      : Nitesh Vishwakarma
# ==========================================================

set -e

echo "======================================================"
echo "     Kubernetes Minikube Installation Started"
echo "======================================================"

#----------------------------------------------------------
# Update System
#----------------------------------------------------------

echo "[1/7] Updating Package Repository..."

sudo apt update

#----------------------------------------------------------
# Install Required Packages
#----------------------------------------------------------

echo "[2/7] Installing Required Packages..."

sudo apt install -y \
curl \
wget \
apt-transport-https \
ca-certificates

#----------------------------------------------------------
# Check Docker
#----------------------------------------------------------

echo "[3/7] Checking Docker..."

if command -v docker >/dev/null 2>&1
then
    echo "Docker Found ✔"
    docker --version
else
    echo "Docker Not Installed ❌"
    echo "Please install Docker first."
    exit 1
fi

#----------------------------------------------------------
# Install kubectl
#----------------------------------------------------------

echo "[4/7] Installing kubectl..."

if command -v kubectl >/dev/null 2>&1
then
    echo "kubectl already installed."
else

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

fi

#----------------------------------------------------------
# Install Minikube
#----------------------------------------------------------

echo "[5/7] Installing Minikube..."

if command -v minikube >/dev/null 2>&1
then
    echo "Minikube already installed."
else

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube

rm -f minikube-linux-amd64

fi

#----------------------------------------------------------
# Verify Installation
#----------------------------------------------------------

echo "[6/7] Verifying Installation..."

echo
echo "Docker Version"
docker --version

echo
echo "kubectl Version"
kubectl version --client

echo
echo "Minikube Version"
minikube version

#----------------------------------------------------------
# Start Cluster
#----------------------------------------------------------

echo "[7/7] Starting Minikube Cluster..."

minikube start \
--driver=docker \
--cpus=2 \
--memory=4096

echo
echo "======================================================"
echo "Cluster Information"
echo "======================================================"

kubectl cluster-info

echo

kubectl get nodes

echo

kubectl get pods -A

echo

minikube status

echo
echo "======================================================"
echo " Kubernetes Cluster Ready Successfully"
echo "======================================================"

echo
echo "Useful Commands"
echo "--------------------------------------"
echo "minikube status"
echo "kubectl get nodes"
echo "kubectl get pods -A"
echo "minikube dashboard"
echo "minikube ssh"
echo "minikube stop"
echo "minikube delete"

echo
echo "Installation Completed Successfully ✔"
```
