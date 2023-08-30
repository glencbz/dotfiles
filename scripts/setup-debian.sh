#! /usr/bin/env bash

sudo apt install \
    curl \
    zsh \

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Tmux configs
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
