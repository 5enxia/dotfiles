#!/bin/bash

# shell
# rm ~/.bashrc
# ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
# ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
# ln -sf ~/dotfiles/.zplug ~/.zplug
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish

# vim/neovim
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# others
## slate
if [ "$(uname)" == 'Darwin' ]; then
    ln -sf ~/dotfiles/.slate.js ~/.slate.js
fi

