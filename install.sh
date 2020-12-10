#!/bin/sh

set -e

# Install the fish shell
sudo apt-get -y install fish

# Copy my okta config to my home directory
cp ~/dotfiles/.okta_aws_login_config ~/

# Install personal cli utilities
sudo apt-get -y install tldr exa

# Run tldr for the first time
tldr - > /dev/null

# Make fish the default shell
echo $(which fish) | sudo tee -a /etc/shells
sudo chsh -s $(which fish)

# Run fish configuration
fish ~/dotfiles/setup.fish