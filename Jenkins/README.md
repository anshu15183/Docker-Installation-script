# ⚙️ Jenkins Installation Script for Ubuntu

This project provides a one-liner script to install **Jenkins** on **Ubuntu**, along with **OpenJDK 21**, firewall configuration (`ufw` or `firewalld`), and automatic service setup.

---

## 🚀 One-Liner Installer

Run this command in your terminal to install Jenkins:

```bash
curl -fsSL https://raw.githubusercontent.com/anshu15183/Installation-scripts/refs/heads/main/Jenkins/jenkins_install_script.sh | bash
```

> 🔧 Installs Java, Jenkins, configures the firewall, and displays access URLs.

---

## 📋 What This Script Does

- Updates the system
- Installs OpenJDK 21
- Adds Jenkins' official GPG key and repository
- Installs Jenkins
- Starts and enables Jenkins as a system service
- Opens port 8080 using UFW or firewalld
- Displays Jenkins access URLs (both local and public)

---

## 🔐 Access Jenkins After Installation

Jenkins will be running at:

```
http://localhost:8080
http://<your-local-ip>:8080
http://<your-public-ip>:8080
```


> ⚠️ Ensure port 8080 is allowed in your cloud provider's firewall (e.g., AWS, OCI, Azure).

---



## 🧰 Jenkins Service Commands

```bash
# Start Jenkins
sudo systemctl start jenkins

# Enable auto-start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins
```

---

## Uninstall Jenkins (Optional)

```bash
sudo apt remove --purge jenkins
sudo rm -rf /var/lib/jenkins /var/log/jenkins
```

---


