# Basic
sudo pacman -Sy xorg xorg-xinit git base-devel openssl zlib xz tk unzip libx11 libxft libxinerama openssh

# Dev
sudo pacman -Sy zsh btop neovim dbeaver github-cli

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

# Utils
sudo pacman -Sy libreoffice-still pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse bluez bluez-utils brightnessctl  wget curl unzip rsync neofetch picom feh jq

## ZSH plugin manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
sudo chsh -s $(which zsh) victor

cd ~
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S nerd-fonts discord-ptb google-chrome insomnia-bin visual-studio-code-bin azure-cli-bin

# Files
cp -R dot-files/.config dot-files/wallpapers dot-files/xorg/.xinitrc dot-files/xorg/.Xresources dot-files/.zprofile ~/
sudo cp dot-files/xorg/50-touchpad.conf /etc/X11/xorg.conf.d/

git config --global user.email "victor@driva.com.br"
git config --global user.name "Victor Belinello"
