# ☸️ Kubernetes Minikube Cluster Setup

<div align="center">

# 🚀 Production-Style Local Kubernetes Cluster using Minikube

### Learn Kubernetes by building a production-like local environment.

![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.33-326CE5?style=for-the-badge\&logo=kubernetes\&logoColor=white)
![Minikube](https://img.shields.io/badge/Minikube-Latest-2962FF?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Engine-2496ED?style=for-the-badge\&logo=docker\&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge\&logo=ubuntu\&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-FCC624?style=for-the-badge\&logo=linux\&logoColor=black)

---

**Cloud • DevOps • Kubernetes • Docker • Linux**

</div>

---

# 📚 Project Overview

This project demonstrates how to build a **production-style local Kubernetes environment using Minikube**.

The objective is to understand Kubernetes installation, cluster management, and daily administration tasks that are commonly performed by Cloud and DevOps Engineers.

This lab focuses on learning Kubernetes from the ground up rather than simply creating a cluster.

---

# 🎯 Objectives

* Install Minikube
* Configure Docker Driver
* Create Kubernetes Cluster
* Verify Cluster Components
* Learn kubectl
* Understand Kubernetes Architecture
* Practice Cluster Administration
* Build a GitHub Portfolio Project

---

# 🏗 Architecture

```text
                Ubuntu 24.04 LTS
                       │
                Docker Engine
                       │
                Minikube Driver
                       │
                Kubernetes Cluster
                       │
          ┌──────────────────────────┐
          │      Control Plane        │
          │──────────────────────────│
          │ kube-apiserver           │
          │ kube-scheduler           │
          │ kube-controller-manager  │
          │ etcd                     │
          │ kubelet                  │
          │ containerd               │
          └──────────────────────────┘
```

---

# 🛠 Tech Stack

| Technology    | Purpose                |
| ------------- | ---------------------- |
| Ubuntu 24.04  | Operating System       |
| Docker Engine | Container Runtime      |
| Minikube      | Local Kubernetes       |
| kubectl       | Kubernetes CLI         |
| YAML          | Resource Configuration |
| Git           | Version Control        |

---

# 📂 Project Structure

```text
02-minikube-cluster-setup/
│
├── README.md
├── setup.md
├── install_minikube.sh
│
├── screenshots/
```

---

# 📋 Prerequisites

* Ubuntu 24.04 LTS
* Docker Engine
* Internet Connection
* sudo Privileges

---

# 🚀 Installation

Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/02-minikube-cluster-setup.git
```

Go to Project

```bash
cd 02-minikube-cluster-setup
```

Give Permission

```bash
chmod +x install_minikube.sh
```

Run Installation

```bash
./install_minikube.sh
```

---

# ▶️ Start Cluster

```bash
minikube start --driver=docker
```

---

# 📌 Verify Cluster

```bash
minikube status

kubectl cluster-info

kubectl get nodes

kubectl get nodes -o wide

kubectl get pods -A

kubectl get namespaces

docker ps
```

---

# 📊 Cluster Workflow

```text
Developer
     │
     ▼
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
Application Pod
```

---

# 📖 Topics Covered

* Kubernetes
* Minikube
* Docker Driver
* kubectl
* Control Plane
* Worker Node
* kubelet
* kube-proxy
* Scheduler
* API Server
* etcd
* Namespaces
* System Pods
* Kubernetes Dashboard

---

# 🧪 Useful Commands

### Cluster Status

```bash
minikube status
```

### Cluster Info

```bash
kubectl cluster-info
```

### View Nodes

```bash
kubectl get nodes
```

### System Pods

```bash
kubectl get pods -A
```

### Dashboard

```bash
minikube dashboard
```

### SSH into Minikube

```bash
minikube ssh
```

### Stop Cluster

```bash
minikube stop
```

### Delete Cluster

```bash
minikube delete
```
---

# 🎯 Skills Gained

* Kubernetes Fundamentals
* Cluster Administration
* Linux Commands
* Docker Integration
* kubectl Usage
* Kubernetes Troubleshooting
* Cloud & DevOps Practices

---

# 📌 Interview Questions

* What is Minikube?
* Why use Minikube?
* Difference between Minikube and KIND?
* What is kubectl?
* What is kubelet?
* What is kube-proxy?
* What is etcd?
* What is the Control Plane?
* What is the Docker Driver?
* How do you delete a Minikube cluster?

---

# 📈 Learning Roadmap

* ✅ Install Docker
* ✅ Install Minikube
* ✅ Install kubectl
* ✅ Create Cluster
* ✅ Verify Cluster
* ⏳ Pods
* ⏳ ReplicaSets
* ⏳ Deployments
* ⏳ Services
* ⏳ ConfigMaps
* ⏳ Secrets
* ⏳ Volumes
* ⏳ Ingress
* ⏳ Helm
* ⏳ Monitoring
* ⏳ ArgoCD

---

# 🤝 Contributing

Suggestions, improvements, and feedback are always welcome. Feel free to open an issue or submit a pull request.

---

# 👨‍💻 Author

**Nitesh Vishwakarma**

Cloud | DevOps | Kubernetes | Docker | Linux | AWS

---

# ⭐ Support

If you found this project helpful, please consider giving it a **Star ⭐**.

It motivates me to continue building production-style Cloud and DevOps labs.

---

<div align="center">

## 🚀 Learning Kubernetes One Lab at a Time

**Build • Learn • Deploy • Automate**

⭐ Thanks for visiting this repository!

</div>
