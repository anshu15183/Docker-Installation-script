# 🚀 Docker Installation Script for Ubuntu

This script helps you install the latest Docker components cleanly and efficiently on any Ubuntu-based system.

---

## 🧰 What This Script Does

- Removes older versions of Docker and related tools.
- Adds Docker’s official GPG key and APT repository.
- Installs:
  - `docker-ce`
  - `docker-ce-cli`
  - `containerd.io`
  - `docker-buildx-plugin`
  - `docker-compose-plugin`
- Runs `hello-world` to verify Docker is working.

---

## 📂 Files Included

| File                    | Description                                     |
|-------------------------|-------------------------------------------------|
| `docker_install_script.sh` | Shell script to automate Docker installation |
| `README.md`             | Documentation (this file)                      |

---

## 📋 Prerequisites

- Ubuntu system (20.04, 22.04 or later)
- `sudo` privileges
- Internet connection

---

## ⚙️ How to Use

### Step 1: Download the Script

```bash
curl -O https://your-domain-or-repo.com/docker_install_script.sh
```

### Step 2: Make It Executable

```bash
chmod +x docker_install_script.sh
```

Step 3: Run the Script

```bash
./docker_install_script.sh
```

🧪 Verify Docker Installation

```bash
docker run hello-world
```
You should see a success message indicating Docker is working correctly.

### Optional: Run Docker as Non-root User
To use Docker without sudo:

```bash
sudo usermod -aG docker $USER && newgrp docker
```
