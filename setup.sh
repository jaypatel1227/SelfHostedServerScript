sudo yay -Syuu
yay -Sy git rust docker docker-compose
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

mkdir ~/Servers
cd ~/Servers
git clone https://github.com/jaypatel1227/FileConversion.git
