#! /usr/bin/env bash

cd ~/dotfiles
./copy-in.sh
git commit -m "Routine commit $(date)"
git push
