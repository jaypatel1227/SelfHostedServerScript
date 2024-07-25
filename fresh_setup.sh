sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ../
rm -rf ../yay
yay -Sy git rust docker docker-compose neovim unzip python typescript npm
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

mkdir ~/Servers

cp ./server.bashrc ~/.bashrc

mkdir ~/.config
mkdir ~/.config/nvim
git clone https://github.com/jaypatel1227/kickstart.nvim.git ~/.config/nvim/ -b personalized-modular --single-branch
c

cd ~/Servers
