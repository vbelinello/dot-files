# Basic
sudo pacman -Syyuu

sudo pacman -Sy git zsh btop neovim dbeaver github-cli jq base-devel openssl zlib xz tk unzip openssh rsync neofetch wget curl libreoffice-still starship spectacle

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

# ZSH plugin manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
sudo chsh -s $(which zsh) victor

# AUR Helper
git clone https://aur.archlinux.org/yay.git ~/yay && cd ~/yay && makepkg -si

yay -S discord-ptb google-chrome visual-studio-code-bin azure-cli-bin noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-symbola  ttf-jetbrains-mono-nerd azure-storage-explorer

# Extra
git config --global user.email "victor@driva.com.br"
git config --global user.name "Victor Belinello"
git config --global init.defaultBranch main
