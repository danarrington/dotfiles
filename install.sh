#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

# symlink vscode settings
ln -s $DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $DIR/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# setup vim
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.vim ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall