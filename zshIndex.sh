#!/bin/zsh
#  Essentials ZSH Script

# Packages
packages=(
    fastfetch
    packagekit
    packagekit-qt6
)

for package in "${packages[@]}"; do
    echo "Installing $package with Yay..."
    yay -S --needed --noconfirm "$package"
done

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#DOWNLOAD FONTS
#DOWNLOAD THEME
#ENABLE THEME
#AUTO CONFIG KDE