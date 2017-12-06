#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

# symlink vscode settings
ln -s $DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $DIR/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
