#!/bin/sh

# update Homebrew and upgrade installed packages
brew update
brew upgrade

# install CLI tools, font, and media dependencies
brew install \
    atuin \
    bat \
    btop \
    bun \
    composer \
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
    uv \
    yazi \
    zoxide \
    zsh-autosuggestions \
    zsh-syntax-highlighting

# force-link ffmpeg-full and imagemagick-full so yazi can find them
brew link ffmpeg-full imagemagick-full -f --overwrite
