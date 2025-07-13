sudo pacman -S --needed --noconfirm base-devel

if ! command -v yay &>/dev/null; then
    cd /tmp
    git clone https://aur.archlinux.org/pikaur.git
    cd pikaur
    makepkg -fsri
    cd -
    rm -rf pikaur
    cd ~
fi
