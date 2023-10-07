asdf update 
asdf plugin add python
asdf plugin add nodejs
asdf plugin add ruby
asdf plugin add kubelogin
asdf plugin add kubectl

asdf install nodejs latest
asdf install ruby latest
asdf install kubectl latest
asdf install kubelogin latest
asdf install python 3.11.5

asdf global nodejs latest
asdf global ruby latest
asdf global kubectl latest
asdf global kubelogin latest
asdf global python 3.11.5

mkdir ~/usb
sudo mount /dev/sda1 ~/usb
sudo cp -R ~/usb/.ssh ~
sudo chown -R victor: ~/.ssh
chmod 400 ~/.ssh/*
