#!/bin/sh

# update Homebrew and upgrade packages
brew update
brew upgrade

# install packages
brew install \
    atuin \
    bat \
    eza \
    direnv \
    fd \
    fzf \
    gh \
    jq \
    lazygit \
    neovim \
    node \
    python \
    ripgrep \
    starship \
    stow \
    tmux \
    zoxide \
    zsh-autosuggestions \
    zsh-syntax-highlighting
