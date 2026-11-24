#!/bin/bash

# update Homebrew and upgrade installed packages
brew update
brew upgrade

# languages, runtimes, and package managers
packages=(
    composer                    # PHP dependency manager
    node                        # JavaScript runtime
    python                      # Python runtime
    uv                          # Python package and virtualenv manager
)

# CLI tools
packages+=(
    atuin                       # shell history sync
    bat                         # cat with syntax highlighting
    bottom                      # system monitor
    duf                         # disk usage viewer
    eza                         # ls replacement
    fd                          # file search
    fzf                         # fuzzy finder
    gdu                         # disk usage analyzer
    gh                          # GitHub CLI
    lazygit                     # Git TUI
    neovim                      # text editor
    ripgrep                     # text search
    starship                    # shell prompt
    stow                        # dotfile symlink manager
    tmux                        # terminal multiplexer
    tree-sitter-cli             # parser generator for editors
    zoxide                      # directory jumping
    zsh-autosuggestions         # zsh autosuggestions
    zsh-syntax-highlighting     # zsh syntax highlighting
)

# yazi and its dependencies
packages+=(
    yazi                        # file manager
    ffmpeg-full                 # video and audio preview
    imagemagick-full            # image preview
    sevenzip                    # archive preview
    jq                          # JSON preview
    poppler                     # PDF preview
    resvg                       # SVG preview
)

# font
packages+=(
    font-jetbrains-mono-nerd-font  # monospace Nerd Font
)

brew install "${packages[@]}"

# force-link ffmpeg-full and imagemagick-full so yazi can find them
brew link ffmpeg-full imagemagick-full -f --overwrite
