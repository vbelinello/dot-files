# For Hyprland
1. Use archinstall with hyprland profile
2. sudo pacman -S wofi waybar swaybg

## Browser scaling
1. Go to brave://flags/#ozone-platform-hint (chrome:// for Google Chrome) 
3. Set the flag to Auto

# General
1. sudo pacman -S git base-devel pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse bluez bluez-utils openssl zlib xz tk unzip
2. git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
3. yay -S otf-font-awesome noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-symbola ttf-jetbrains-mono-nerd discord-ptb google-chrome brave-bin insomnia-bin
4. sudo pacman -R gnu-free-fonts
5. sudo systemctl enable bluetooth
6. sudo pacman -S btop neovim libreoffice-still dbeaver fish terraform brightnessctl thunar thunar-volman gvfs
7. curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
8. cargo install bat ripgrep exa
9. echo /usr/bin/fish | sudo tee -a /etc/shells
10. chsh -s /usr/bin/fish
11. git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
12. mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
13. Add `source ~/.asdf/asdf.fish` to ~/.config/fish/config.fish
14. Install asdf plugins for nodejs and python
15. asdf install python 3.10.11 && asdf global python 3.10.11
18. pip install ansible
19. git clone https://github.com/LazyVim/starter ~/.config/nvim
20. npm i -g pyright
21. pip install ruff
