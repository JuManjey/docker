# Install docker
#!/bin/bash
sudo apt update
sudo apt install wget -y
wget -O get-docker.sh https://get.docker.com
sudo sh get-docker.sh
sudo apt install -y docker-compose
rm -f get-docker.sh
sudo usermod -aG docker $USER

# Isntall docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Upgrading🔗
docker-compose migrate-to-labels

# Install Docker Engine
sudo apt-get install \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
   
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
# Check
sudo docker run hello-world

