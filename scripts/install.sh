#!/bin/sh

# clone dotfiles
rm -rf ~/dotfiles && git clone https://github.com/mkharis/dotfiles.git ~/dotfiles

# clone neovim configs
rm -rf ~/.config/nvim && git clone https://github.com/mkharis/NvChad-starter.git ~/.config/nvim
# rm -rf ~/.config/nvim && git clone https://github.com/mkharis/kickstart.nvim.git ~/.config/nvim

# clone tpm
rm -rf ~/.tmux/plugins/tpm && git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# install oh-my-zsh
rm -rf ~/.oh-my-zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create directory for global npm packages
rm -rf ~/.npm-global && mkdir ~/.npm-global

# set global npm packages path
npm config set prefix ~/.npm-global

# remove .zshrc before stow
rm -f ~/.zshrc

# stow dotfiles
cd ~/dotfiles
stow dotfiles

# stow credentials if any
if [ -d ~/.credentials ]; then
    cd ~/.credentials && stow .
fi
