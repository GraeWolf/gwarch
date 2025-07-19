pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning GWarch..."
rm -rf ~/.local/share/gwarch/
git clone https://github.com/GraeWolf/gwarch.git ~/.local/share/gwarch >/dev/null

# Use custom branch if instructed
if [[ -n "$GWARCH_REF" ]]; then
  echo -e "\eUsing branch: $GWARCH_REF"
  cd ~/.local/share/gwarch
  git fetch origin "${GWARCH_REF}" && git checkout "${GWARCH_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/gwarch/install.sh
