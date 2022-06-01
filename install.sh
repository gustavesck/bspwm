#!/bin/bash

cd ~
sudo pacman -Syy
sudo pacman -S --noconfirm bspwm sxhkd polybar rofi lxappearance picom thunar xfce4-terminal nitrogen firefox nano xorg

# Install yay

sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# Install themes

yay -S --noconfirm mint-y-icons mint-themes rofi-mint-themes xcursor-dmz nordic-wallpapers-git all-repository-fonts

# Programs

sudo pacman -S --noconfirm xed parole celluloid gnome-calculator xreader drawing rhythmbox vlc keepassxc chromium \
file-roller qbittorrent p7zip gnome-disk-utility libreoffice jdk-openjdk gvfs simple-scan

# Config files

cd ~
cd bspwm/.config/
cp -r * ~/.config
cd ~

# Sddm

sudo pacman -S --noconfirm sddm
sudo systemctl enable sddm.service

# Installation done

echo "All done! Please reboot the computer."