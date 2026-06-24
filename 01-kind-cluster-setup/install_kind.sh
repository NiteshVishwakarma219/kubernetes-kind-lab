
#!/bin/bash

echo "======================================="
echo " Installing KIND and kubectl"
echo "======================================="

# Update package index
sudo apt update

# Install curl if not installed
sudo apt install -y curl

########################################
# Install KIND
########################################

echo "Downloading KIND..."

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.32.0/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind

########################################
# Install kubectl
########################################

echo "Downloading kubectl..."

curl -LO "https://dl.k8s.io/release/v1.30.0/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

########################################
# Verify Installation
########################################

echo
echo "KIND Version"
kind version

echo
echo "kubectl Version"
kubectl version --client

########################################
# Cleanup
########################################

rm -f kubectl

echo
echo "======================================="
echo " Installation Completed Successfully"
echo "======================================="
