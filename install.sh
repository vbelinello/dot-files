sudo apt update

# Install frontend for apt
sudo apt install -y nala

# Install basic packages
sudo nala install -y curl wget unzip fonts-noto rsync neovim neofetch btop bat ripgrep zsh jq gnupg software-properties-common
# Build deps
sudo nala install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
sudo nala install -y autoconf patch rustc libyaml-dev libreadline6-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

## Extra fonts
mkdir -p ~/.local/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
mv 'MesloLGS NF Regular.ttf' ~/.local/share/fonts
fc-cache -fv ~/.local/share/fonts

# Install i3 and desktop utils
sudo nala install -y xorg pipewire-audio bluez i3-wm alacritty rofi feh picom dunst flameshot libreoffice-calc mpv

## Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  -O chrome.deb
sudo nala install -y ./chrome.deb
rm chrome.deb
## Vscode
wget https://az764295.vo.msecnd.net/stable/abd2f3db4bdb28f9e95536dfa84d8479f1eb312d/code_1.82.2-1694671812_amd64.deb  -O code.deb
sudo nala install -y ./code.deb
rm code.deb
## Discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo nala install -y ./discord.deb
rm discord.deb
## ZSH plugin manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
## Dbeaver
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb -O dbeaver.deb
sudo nala install -y ./dbeaver.deb
rm dbeaver.deb
## Insomnia
wget https://download.konghq.com/insomnia-ubuntu/pool/all/i/insomnia/insomnia_8.1.0_amd64.deb -O insomnia.deb
sudo nala install -y ./insomnia.deb
rm insomnia.deb
## Github CLI
wget https://github.com/cli/cli/releases/download/v2.35.0/gh_2.35.0_linux_amd64.deb -O gh.deb
sudo nala install -y ./gh.deb
rm gh.deb

sudo chsh -s $(which zsh) victor


cp -R .config wallpapers .xinitrc .XResources .zprofile ~/

