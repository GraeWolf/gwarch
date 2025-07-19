if ! command -v nvim &>/dev/null; then
    sudo pacman -S --noconfirm --needed neovim luarocks tree-sitter-cli

    # install LazyVim
    rm -rf ~/.config/nvim
    git clone https://github.com/LazyVim/starter ~/.config/nvim/
    rm -rf ~/.config/nvim/.git
fi
