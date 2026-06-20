# Marvin — Infrastructure Orchestration Layer

Marvin is the unified deployment and orchestration layer for the Nexus AI backend and Technobrain frontend systems.

It uses Docker Compose and Git submodules to manage and deploy the full stack in a single command.

---

## 🧩 Architecture

Marvin brings together:

* **Nexus** → AI agent backend (Python/FastAPI, RAG, email automation)
* **Technobrain** → Next.js frontend dashboard
* **PostgreSQL** → Core database
* **Qdrant** → Vector database for embeddings
* **Ollama** → Local LLM runtime
* **Keycloak** → Authentication & identity management

---

## 📦 Repository Structure

```
Marvin/
├── docker-compose.yml
├── .env.docker
├── nexus/            (submodule - backend AI system)
├── Technobrain/      (submodule - frontend dashboard)
└── .gitmodules
```

---

## 🚀 Quick Start (Local)

### 1. Clone repository with submodules

```bash
git clone --recurse-submodules https://github.com/NeemaMwende/Marvin.git
cd Marvin
```

### 2. Start the system

```bash
docker compose up -d
```

### 3. View logs

```bash
docker compose logs -f
```

---

## ☁️ Production Deployment (e.g. DigitalOcean)

```bash
git clone --recurse-submodules https://github.com/NeemaMwende/Marvin.git
cd Marvin

docker compose up -d
```

---

## 🔄 Updating Services

### Update Nexus

```bash
cd nexus
git pull origin main

cd ..
git add nexus
git commit -m "chore: update nexus submodule"
git push
```

### Update Technobrain

```bash
cd Technobrain
git pull origin main

cd ..
git add Technobrain
git commit -m "chore: update technobrain submodule"
git push
```

---

## 🔐 Environment Configuration

All environment variables are managed via:

```
.env.docker
```

This includes database credentials, service URLs, and runtime configuration.

---

## ⚠️ Notes

* This repository does NOT contain application code.
* Nexus and Technobrain are independent repositories.
* Submodules ensure reproducible deployments.
* Always clone with `--recurse-submodules`.

---

## 🧠 Purpose

Marvin acts as a **single deployment entry point** for a multi-service AI system.

It ensures:

* reproducible environments
* clean service separation
* production-ready orchestration
