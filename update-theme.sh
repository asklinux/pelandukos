#!/bin/bash

# Laluan tema PelandukOS
THEME_DIR="/usr/share/desktop-base/pelandukos-theme"

# 1. Daftar semua alternatif berkaitan desktop-base
sudo update-alternatives --install /usr/share/images/desktop-base/desktop-background desktop-background $THEME_DIR/wallpaper/contents/images/1280x1024.svg 100
sudo update-alternatives --install /usr/share/gnome-background-properties/desktop-background.xml desktop-background.xml $THEME_DIR/wallpaper/gnome-background.xml 100
sudo update-alternatives --install /usr/share/images/desktop-base/login-background.svg desktop-login-background $THEME_DIR/wallpaper/login-background.svg 100
sudo update-alternatives --install /usr/share/images/desktop-base/GRUB.png desktop-grub $THEME_DIR/grub/grub-16x9.png 100
sudo update-alternatives --install /usr/share/images/desktop-base/desktop-splash desktop-splash $THEME_DIR/plymouth/splash.png 100
sudo update-alternatives --install /etc/alternatives/vendor-logos vendor-logos $THEME_DIR/logo 100
sudo update-alternatives --install /etc/alternatives/desktop-theme desktop-theme $THEME_DIR 100

# 2. Set semua kepada pelandukos
sudo update-alternatives --set desktop-background $THEME_DIR/wallpaper/contents/images/1280x1024.svg
sudo update-alternatives --set desktop-background.xml $THEME_DIR/wallpaper/gnome-background.xml
sudo update-alternatives --set desktop-login-background $THEME_DIR/wallpaper/login-background.svg
sudo update-alternatives --set desktop-grub $THEME_DIR/grub/grub-16x9.png
sudo update-alternatives --set desktop-splash $THEME_DIR/plymouth/splash.png
sudo update-alternatives --set vendor-logos $THEME_DIR/logo
sudo update-alternatives --set desktop-theme $THEME_DIR

# 3. Padam cache latar belakang GNOME
echo "🧹 Padam cache wallpaper GNOME..."
rm -rf ~/.cache/backgrounds/

# 4. Sahkan symlink (debug)
echo -e "\n🔗 Semak symlink:"
ls -l /usr/share/images/desktop-base/
ls -l /usr/share/gnome-background-properties/desktop-background.xml
ls -l /etc/alternatives/desktop-theme


