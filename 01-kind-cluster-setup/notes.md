# 🚀 Lab 01 – Kubernetes KIND Cluster Setup

## 📌 Objective

The goal of this lab is to set up a local multi-node Kubernetes cluster using **KIND (Kubernetes IN Docker)** on **Ubuntu 24.04 LTS**.

By the end of this lab, you will have:

* Installed Docker Engine
* Installed `kubectl`
* Installed KIND
* Created a Kubernetes cluster
* Verified the cluster
* Understood the cluster architecture

---

# 🏗️ Architecture

```text
                    Ubuntu 24.04 LTS
                           │
                     Docker Engine
                           │
                     KIND Cluster
                           │
      ┌────────────────────┼────────────────────┐
      │                    │                    │
      ▼                    ▼                    ▼
+----------------+   +----------------+   +----------------+
| Control Plane  |   | Worker Node 1  |   | Worker Node 2  |
+----------------+   +----------------+   +----------------+
| API Server     |   | kubelet        |   | kubelet        |
| Scheduler      |   | kube-proxy     |   | kube-proxy     |
| Controller Mgr |   | containerd     |   | containerd     |
| etcd           |   | Pods           |   | Pods           |
+----------------+   +----------------+   +----------------+
```

---

# 📋 Prerequisites

* Ubuntu 24.04 LTS
* Internet Connection
* Sudo Privileges

---

# Step 1 - Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

---

# Step 2 - Install Docker Engine

Verify Docker:

```bash
docker --version
```

Start Docker:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Check Status:

```bash
sudo systemctl status docker
```

---

# Step 3 - Install KIND

```bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.32.0/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind
```

Verify:

```bash
kind version
```

---

# Step 4 - Install kubectl

```bash
curl -LO "https://dl.k8s.io/release/v1.30.0/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/
```

Verify:

```bash
kubectl version --client
```

---

# Step 5 - Create KIND Configuration

Create the configuration file:

```bash
nano kind-config.yaml
```

Paste:

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4

name: company-lab

nodes:
  - role: control-plane
    image: kindest/node:v1.31.2
    extraPortMappings:
      - containerPort: 80
        hostPort: 80
        protocol: TCP
      - containerPort: 443
        hostPort: 443
        protocol: TCP

  - role: worker
    image: kindest/node:v1.31.2

  - role: worker
    image: kindest/node:v1.31.2
```

---

# Step 6 - Create the Cluster

```bash
kind create cluster --config kind-config.yaml
```

Expected Output:

```text
Creating cluster "company-lab" ...

Creating control-plane ...

Creating worker ...

Creating worker ...

Installing CNI ...

Installing StorageClass ...

Set kubectl context to "kind-company-lab"

Cluster creation complete.
```

---

# Step 7 - Verify the Cluster

### Check Cluster

```bash
kind get clusters
```

---

### Cluster Information

```bash
kubectl cluster-info
```

---

### View Nodes

```bash
kubectl get nodes
```

---

### Detailed Node Information

```bash
kubectl get nodes -o wide
```

---

### System Pods

```bash
kubectl get pods -A
```

---

### Docker Containers

```bash
docker ps
```

---

### Docker Images

```bash
docker images
```

---

### Docker Networks

```bash
docker network ls
```

---

### Current Context

```bash
kubectl config current-context
```

---

### Kubernetes Version

```bash
kubectl version
```

---

# How KIND Works

```text
kubectl
    │
    ▼
API Server
    │
    ▼
etcd
    │
    ▼
Scheduler
    │
    ▼
Worker Node
    │
    ▼
kubelet
    │
    ▼
containerd
    │
    ▼
Pod
```

---

# Components Created

## Control Plane

* kube-apiserver
* etcd
* kube-scheduler
* kube-controller-manager
* kubelet
* kube-proxy

---

## Worker Nodes

* kubelet
* kube-proxy
* containerd
* Pods

---

# Useful Commands

```bash
kind get clusters

kubectl cluster-info

kubectl get nodes

kubectl get nodes -o wide

kubectl get pods -A

kubectl get namespaces

kubectl config current-context

docker ps

docker images

docker network ls
```

---

# Cleanup

Delete the cluster:

```bash
kind delete cluster --name company-lab
```

Verify:

```bash
kind get clusters
```

---

# What I Learned

* What KIND is
* Why KIND is used
* Difference between Docker and Kubernetes
* How Kubernetes nodes are created using Docker containers
* How to install KIND and kubectl
* How to create a multi-node Kubernetes cluster
* How to verify cluster health
* Basic Kubernetes architecture
* Essential `kubectl` commands

---

# Project Structure

```text
01-kind-cluster-setup/
│
├── install_kind.sh
├── kind-config.yaml
├── README.md
├── notes.md
└── screenshots/
    ├── docker-version.png
    ├── kind-version.png
    ├── kubectl-version.png
    ├── cluster-created.png
    ├── kubectl-get-nodes.png
    ├── kubectl-get-pods.png
    ├── docker-ps.png
    └── cluster-info.png
```

---

# Interview Questions

### What is KIND?

KIND (Kubernetes IN Docker) is a tool that runs local Kubernetes clusters using Docker containers as Kubernetes nodes.

---

### Why use KIND?

* Local development
* Learning Kubernetes
* CI/CD testing
* Multi-node testing
* Fast cluster creation

---

### Is KIND used in production?

No. KIND is designed for development, testing, and CI/CD. Production environments typically use managed Kubernetes services or clusters created with `kubeadm`.

---

### What is the purpose of `kindest/node`?

`kindest/node` is the Docker image used by KIND to create Kubernetes nodes. It already includes the Kubernetes components required for a functioning node.

---

## ✅ Lab Status

**Lab Name:** Kubernetes KIND Cluster Setup

**Status:** Completed Successfully ✔️
