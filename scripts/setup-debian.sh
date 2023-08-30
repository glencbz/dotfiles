#! /usr/bin/env bash

set -ex

# Basics
sudo apt-get install curl

# zsh prompt
sudo apt-get install zsh
if ! [[ -e ~/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # Starship prompt
    curl -sS https://starship.rs/install.sh | sh
    cp ../files/.zshrc ~
fi

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
