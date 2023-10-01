sudo apt update

# Install frontend for apt
sudo apt install -y nala

# Install basic packages
sudo nala install -y pipewire-audio bluez git unzip fonts-noto curl wget build-essential  alacritty

# Install i3 and utils
sudo nala install -y i3-wm rofi feh picom dunst flameshot libreoffice-calc mpv neovim btop bat ripgrep zsh jq obs-studio

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
# zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
## ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
## Dbeaver
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb -O dbeaver.deb
sudo nala install -y ./dbeaver.deb
rm dbeaver.deb
## Insomnia
wget https://download.konghq.com/insomnia-ubuntu/pool/all/i/insomnia/insomnia_8.1.0_amd64.deb -O insomnia.deb
sudo nala install -y ./insomnia.deb
rm insomnia.deb
## Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo nala update \
&& sudo nala install gh -y