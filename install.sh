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
REPO="${HOME}/.dotfiles"
git clone git@github.com:moredatarequired/dotfiles.git ${REPO}

fun replace_with_symlink () {
    PATH=$1
    rm ${HOME}/${PATH}
    mkdir -p ${HOME}/${PATH}
    ln -s ${REPO}/${PATH} ${HOME}/${PATH}
}

# Replace the default profile for gnome-terminal with a zenburn color scheme.
replace_with_symlink .gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
replace_with_symlink .bashrc
replace_with_symlink .zshrc
replace_with_symlink .Xmodmap
replace_with_symlink .xinitrc
replace_with_symlink .Xresources
replace_with_symlink .xsession


