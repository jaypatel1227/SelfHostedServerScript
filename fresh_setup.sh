sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ../
rm -rf ../yay
yay -Sy git rust docker docker-compose
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

mkdir ~/Servers

git clone https://github.com/jaypatel1227/dotfiles.git
