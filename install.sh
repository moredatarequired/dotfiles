#!/bin/sh

set -e

# Install the fish shell
sudo apt-get -y install fish

# Make fish the default shell
echo $(which fish) | sudo tee -a /etc/shells
sudo chsh -s $(which fish)

# Add the oh-my-fish extension
curl -L https://get.oh-my.fish | fish

# Install the bobthefish theme
echo "omf install bobthefish" | fish

# Use nerdfonts theme
echo "set -U theme_nerd_fonts yes" | fish

# Disable the fallback virtualenv prompt
echo "set -U VIRTUAL_ENV_DISABLE_PROMPT 1" | fish

# Install personal cli utilities
sudo apt-get -y install tldr exa

# Run tldr for the first time
tldr - > /dev/null
