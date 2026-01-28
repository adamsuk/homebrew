#!/bin/bash

echo "Homebrew Back-Uperer"

# change to my backup location
cd $HOME/Documents/repos/Personal/homebrew

# run the backup
/home/linuxbrew/.linuxbrew/bin/brew bundle dump --force

# add to git repo
git add .
git commit -m "Regular automated backup [skip ci]"
git push
