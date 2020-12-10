#!/usr/bin/fish

# Add the oh-my-fish extension
curl -L https://get.oh-my.fish | fish

# Install the bobthefish theme
omf install bobthefish

# Use nerdfonts theme
set -U theme_nerd_fonts yes

# Disable the fallback virtualenv prompt
set -U VIRTUAL_ENV_DISABLE_PROMPT 1
