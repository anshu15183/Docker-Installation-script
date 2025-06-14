#!/bin/bash

# Update system
sudo apt update

# Install OpenJDK 21
sudo apt install -y fontconfig openjdk-21-jre

# Check Java version
java -version

# Add Jenkins GPG key
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repo
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | \
  sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update and install Jenkins
sudo apt-get update
sudo apt-get install -y jenkins

echo "Jenkins installed successfully"

# Start Jenkins
sudo systemctl start jenkins

# Enable auto-start on boot
sudo systemctl enable jenkins

echo "Configuring firewall to allow Jenkins access..."

if command -v ufw >/dev/null 2>&1; then
    echo "➡️ UFW detected: allowing port 8080..."
    sudo ufw allow 8080
    sudo ufw reload
elif command -v firewall-cmd >/dev/null 2>&1; then
    echo "➡️ firewalld detected: allowing ports 80 and 8080..."
    sudo firewall-cmd --permanent --add-port=8080/tcp
    sudo firewall-cmd --permanent --add-port=80/tcp
    sudo firewall-cmd --reload
else
    echo "⚠️ No known firewall tool detected (UFW or firewalld). Please open port 8080 manually if needed."
fi

echo "🔗 Jenkins is running at:"
echo "  🌐 Public: http://$(curl -s ifconfig.me):8080"
