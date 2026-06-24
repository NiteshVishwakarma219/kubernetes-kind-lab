# 🚀 Kubernetes KIND Lab - Production Style Multi-Node Cluster

<div align="center">

![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.31-blue?style=for-the-badge\&logo=kubernetes)
![KIND](https://img.shields.io/badge/KIND-v0.32-success?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Engine-blue?style=for-the-badge\&logo=docker)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge\&logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-black?style=for-the-badge\&logo=linux)

### **Production-Style Kubernetes Learning Lab using KIND**

*Hands-on Kubernetes labs designed to simulate a real-world DevOps environment.*

</div>

---

# 📖 Project Overview

This repository documents my Kubernetes learning journey using **KIND (Kubernetes IN Docker)**.

The objective is to build Kubernetes knowledge from the ground up while following industry best practices and production-style workflows.

Instead of simply running commands, every lab focuses on understanding:

* Kubernetes Architecture
* Cluster Components
* Control Plane
* Worker Nodes
* YAML Manifests
* Networking
* Storage
* Security
* Monitoring
* GitOps

---

# 🏗️ Lab Architecture

```text
                    Ubuntu Server 24.04
                            │
                     Docker Engine
                            │
                     KIND Cluster
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
        ▼                   ▼                   ▼
+----------------+   +----------------+   +----------------+
| Control Plane  |   | Worker Node 1  |   | Worker Node 2  |
+----------------+   +----------------+   +----------------+
| API Server     |   | kubelet        |   | kubelet        |
| Scheduler      |   | kube-proxy     |   | kube-proxy     |
| ControllerMgr  |   | containerd     |   | containerd     |
| etcd           |   | Pods           |   | Pods           |
+----------------+   +----------------+   +----------------+
```

---

# 🎯 Objectives

* Build a production-style Kubernetes lab
* Learn Kubernetes from beginner to advanced
* Understand Kubernetes internals
* Practice troubleshooting
* Create a portfolio for Cloud & DevOps roles

---

# 🛠️ Tech Stack

| Technology       | Purpose                  |
| ---------------- | ------------------------ |
| Ubuntu 24.04 LTS | Operating System         |
| Docker Engine    | Container Runtime        |
| KIND             | Local Kubernetes Cluster |
| kubectl          | Kubernetes CLI           |
| YAML             | Kubernetes Manifests     |
| Git              | Version Control          |

---

# 📂 Repository Structure

```text
kubernetes-kind-lab/
│
├── 01-kind-cluster-setup/
│   ├── install_kind.sh
│   ├── kind-config.yaml
│   ├── README.md
│   ├── notes.md
│   └── screenshots/
│
├── 02-pods/
├── 03-replicaset/
├── 04-deployment/
├── 05-services/
├── 06-configmaps/
├── 07-secrets/
├── 08-volumes/
├── 09-persistent-volumes/
├── 10-statefulsets/
├── 11-daemonsets/
├── 12-jobs/
├── 13-cronjobs/
├── 14-ingress/
├── 15-helm/
├── 16-monitoring/
├── 17-argocd/
└── README.md
```

---

# 📚 Learning Roadmap

* ✅ Lab 01 – KIND Cluster Setup
* ⏳ Lab 02 – Pods
* ⏳ Lab 03 – ReplicaSets
* ⏳ Lab 04 – Deployments
* ⏳ Lab 05 – Services
* ⏳ Lab 06 – ConfigMaps
* ⏳ Lab 07 – Secrets
* ⏳ Lab 08 – Volumes
* ⏳ Lab 09 – Persistent Volumes
* ⏳ Lab 10 – StatefulSets
* ⏳ Lab 11 – DaemonSets
* ⏳ Lab 12 – Jobs
* ⏳ Lab 13 – CronJobs
* ⏳ Lab 14 – Ingress
* ⏳ Lab 15 – Helm
* ⏳ Lab 16 – Monitoring
* ⏳ Lab 17 – ArgoCD

---

# ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/<your-github-username>/kubernetes-kind-lab.git
```

Go to the project:

```bash
cd kubernetes-kind-lab
```

Run the installation script:

```bash
chmod +x install_kind.sh
./install_kind.sh
```

Create the cluster:

```bash
kind create cluster --config kind-config.yaml
```

---

# 🔍 Verification Commands

```bash
kind get clusters

kubectl cluster-info

kubectl get nodes

kubectl get nodes -o wide

kubectl get pods -A

kubectl get namespaces

docker ps

docker images

docker network ls
```

---

# 📸 Screenshots

Add screenshots here as you complete the lab.

* Cluster Created
* Docker Containers
* Worker Nodes
* Control Plane
* System Pods
* Cluster Information

---

# 🧠 Skills Practiced

* Kubernetes Fundamentals
* Cluster Creation
* Multi-Node Architecture
* Docker Networking
* kubectl Commands
* Linux Administration
* YAML Configuration
* Troubleshooting

---

# 📌 Key Concepts Learned

* Kubernetes Architecture
* Control Plane Components
* Worker Node Components
* API Server
* Scheduler
* etcd
* kubelet
* kube-proxy
* containerd
* KIND Architecture
* Docker Containers as Kubernetes Nodes

---

# 🎯 Interview Topics Covered

* What is Kubernetes?
* What is KIND?
* Why use KIND?
* What is the Control Plane?
* What is kubelet?
* What is kube-proxy?
* What is etcd?
* How does scheduling work?
* Difference between Docker and Kubernetes
* Difference between KIND and kubeadm

---

# 🚀 Future Improvements

* Helm Charts
* Ingress Controller
* Metrics Server
* Prometheus
* Grafana
* ArgoCD
* GitOps
* CI/CD Integration
* Terraform
* Kubernetes on AWS EKS

---

# 👨‍💻 Author

**Nitesh Vishwakarma**

Cloud | DevOps | Kubernetes | AWS | Docker | Linux

---

# ⭐ Support

If you found this repository useful, consider giving it a **⭐ Star** to support the project and follow my Kubernetes learning journey.

---

<div align="center">

### 🚀 Learning Kubernetes One Lab at a Time

**From Containers → Kubernetes → Cloud → DevOps**

</div>
