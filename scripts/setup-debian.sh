#! /usr/bin/env bash

set -ex

# Basics
sudo apt-get install curl

# Tmux configs
if ! [[ -e ~/.tmux.conf ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp ../files/.tmux.conf ~
fi

# Spacemacs
if ! which emacs; then
    sudo apt-get install emacs
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    cp ../files/.spacemacs ~
fi

# Generate ssh key
if ! [[ -e id_ed25519.pub ]]; then
    ssh-keygen -t ed25519 -C "glencbz@gmail.com"
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
fi

# Install nvm
if ! which nvm; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

# zsh prompt
# Do this last because the installer changes shells immediately
sudo apt-get install zsh
if ! [[ -e ~/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # Starship prompt
    curl -sS https://starship.rs/install.sh | sh
    cp ../files/.zshrc ~
fi
