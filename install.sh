# Build
sudo pacman -Sy git base-devel openssl zlib xz tk unzip libx11 libxft libxinerama

# Dev
sudo pacman -Sy zsh btop neovim dbeaver github-cli

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

curl -L https://aka.ms/InstallAzureCli | bash

# Utils
sudo pacman -Sy libreoffice-still pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse bluez bluez-utils brightnessctl  wget curl unzip rsync neofetch picom

## ZSH plugin manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
sudo chsh -s $(which zsh) victor

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S nerd-fonts discord-ptb google-chrome insomnia-bin visual-studio-code-bin

# Files
cp -R .config wallpapers xorg/.xinitrc xorg/.XResources .zprofile ~/
sudo cp xorg/50-touchpad.conf /etc/X11/xorg.conf.d/
