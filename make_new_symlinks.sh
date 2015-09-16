#!/usr/bin/env bash

DIR=~/.minimalist-packing
FILES=".profile"\
" .zshrc"\
" .zlogin"\
" .gitconfig"\
" .vimrc"

echo "Creating new symlinks in user's home folder..."

for file in $FILES; do
  echo "Create a new symblink for "$file". "
  rm -f ~/$file
  ln -s $DIR/$file ~/$file
  echo "Done."
done
