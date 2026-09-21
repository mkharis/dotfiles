#!/bin/sh

# update Homebrew and upgrade packages
brew update
brew upgrade

# install packages
brew install \
    atuin \
    bat \
    btop \
    duf \
    eza \
    fd \
    ffmpeg-full \
    font-jetbrains-mono-nerd-font \
    fzf \
    gh \
    imagemagick-full \
    jq \
    lazygit \
    ncdu \
    neovim \
    node \
    poppler \
    python \
    resvg \
    ripgrep \
    sevenzip \
    starship \
    stow \
    tmux \
    tree-sitter-cli \
    yazi \
    zoxide \
    zsh-autosuggestions \
    zsh-syntax-highlighting

# link ffmpeg-full and imagemagick-full for yazi
brew link ffmpeg-full imagemagick-full -f --overwrite
