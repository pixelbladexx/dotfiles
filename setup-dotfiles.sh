#!/bin/bash

# Clone bare repo
git clone --bare git@github.com:pixelbladexx/dotfiles.git $HOME/.dotfiles

# Alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Checkout
dotfiles checkout || {
  echo "Backing up pre-existing dotfiles."
  mkdir -p .dotfiles-backup
  dotfiles checkout 2>&1 | grep -E "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .dotfiles-backup/{}
  dotfiles checkout
}

# Hide untracked
dotfiles config --local status.showUntrackedFiles no

# Add alias permanently
echo "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME'" >> ~/.zshrc

