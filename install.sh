#!/bin/sh

set -e

# Install the fish shell
sudo apt-get -y install fish

# Make fish the default shell
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

# Add the oh-my-fish extension
curl -L https://get.oh-my.fish | fish

# Install the bobthefish theme
omf install bobthefish

# Use nerdfonts theme
set -U theme_nerd_fonts yes

# Disable the fallback virtualenv prompt
set -U VIRTUAL_ENV_DISABLE_PROMPT 1


# Install personal cli utilities
sudo apt-get -y install tldr exa

# Run tldr for the first time
tldr - > /dev/null