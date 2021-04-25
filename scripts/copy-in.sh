#! /usr/bin/env bash
cat dotfiles-list | xargs -t -I{} cp ~/{} ~/dotfiles/
