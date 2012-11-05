#!/bin/sh

set -e

cd ~

# Update and install base software.
apt-get update
apt-get dist-upgrade -y
apt-get install git zsh curl xmonad dmenu -y

# Install non-repository software.
add-apt-repository ppa:cassou/emacs -y
apt-get update
apt-get install emacs24 emacs24-el -y
curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
chsh -s /bin/zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git config --global user.name "Hugh Wimberly"
git config --global user.email "hugh.wimberly@gmail.com"
git clone git@github.com:moredatarequired/dotfiles.git .dotfiles

# Replace the default profile for gnome-terminal with a zenburn color scheme.
rm ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
mkdir -p ~/.gconf/apps/gnome-terminal/profiles/Default
ln -s ~/.dotfiles/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml

# As well as all the other standard dotfiles.
rm ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
rm ~/.Xmodmap
ln -s ~/.dotfiles/.Xmodmap ~/.Xmodmap
rm ~/.xinitrc
ln -s ~/.dotfiles/.xinitrc ~/.xinitrc
