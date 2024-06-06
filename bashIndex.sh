#!/bin/bash
# Install Essentials then run the Zsh script

# Update the system
sudo pacman -Syu --needed --noconfirm

# package names
packages=(
    git
    curl
    wget
	htop
	zsh
	firefox
	gimp
	vlc
	flatpak
	nodejs
)

# Loop through the array and install each package
for package in "${packages[@]}"; do
    echo "Installing $package..."
    sudo pacman -S --needed --noconfirm "$package"
done

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# Path to the Zsh script
ZSH_SCRIPT="./zshIndex.sh"

# Check if the Zsh script exists
if [ -f "$ZSH_SCRIPT" ]; then
    echo "Launching Zsh script..."
    /bin/zsh "$ZSH_SCRIPT"
else
    echo "Zsh script not found!"
fi