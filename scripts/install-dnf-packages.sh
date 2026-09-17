#!/bin/sh

# enable repositories
sudo dnf copr enable atim/lazygit -y
sudo dnf copr enable atim/starship -y

# upgrade packages
dnf upgrade -y

# install packages
sudo dnf install -y \
    atuin \
    eza \
    fd-find \
    fzf \
    gh \
    jq \
    lazygit \
    neovim \
    nodejs \
    ripgrep \
    starship \
    stow \
    tmux \
    zoxide \
    zsh-autosuggestions \
    zsh-syntax-highlighting
