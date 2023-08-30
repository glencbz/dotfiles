#! /usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Brew install the other important things
brew install \
        starship \
        tmux \
        tmuxinator \
        fzf \
        autojump \
        ag

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Tmux configs
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Copy dotfiles over
ls -A1 ../files | xargs -t -I{} cp ../files/{} ~/
