#!/bin/bash


FONTS=(
    "terminus-font"
    "ttf-font-awesome"
    "ttf-iosevka-fixed-curly"
    "ttf-polybar-icons"
    "ttf-symbola"
    "ttf-symbola-infinality"
    "ttf-ubuntu-font-family"
)

THEMES=(
    "adapta-gtk-theme"
    "papirus-icon-theme"
)

UTILS=(
    "zsh"
    "exfat-utils"
    "xorg-xrandr"
    "xorg-xev"
    "xautomation"

    "w3m" "mc" "htop" "gtop" "curl" "wget" "git" "tig" "tmux"
    "p7zip" "unrar"

    "httpie"                # cURL for humans
    "imagemagick"           # An image viewing/manipulation program

    "networkmanager-l2tp"   # L2TP support for NetworkManager

    "kitty"
    "rxvt-unicode"

    "gparted"
    "gnome-calculator"      # GNOME Scientific calculator
    "firefox"
    "telegram-desktop"
    "transmission-gtk"
    "seahorse"              # NOME application for managing PGP keys
    "mousepad"              # Simple text editor for Xfce
    "ranger"                # A simple, vim-like file manager
)

DEVEL=(
    "base-devel"
    "ctags"
    "clang"
    "python-pip"

    "gvim"
    "geany"                 # Fast and lightweight IDE
)


MEDIA=(
    "moc-pulse-svn"         # An ncurses console audio player with support for pulseaudio (SVN)
    "mpv"                   # Cross-platform media player
    "feh"                   # Fast and light imlib2-based image viewer
    "evince"                # Document viewer (
                            #   PDF, Postscript, djvu, tiff, dvi, XPS, 
                            #   SyncTex support with gedit, 
                            #   comics books (cbr,cbz,cb7 and cbt)
                            # )
    "pulsemixer"            # CLI and curses mixer for pulseaudio
)

WM=(
    "xsettingsd"            # Provides settings to X11 applications via the XSETTINGS specification
    "picom-ibhagwan-git"    # iBhagwan's compton|picom fork (X compositor) with dual_kawase blur and rounded corners
    "sxhkd"                 # Simple X hotkey daemon
    "rofi"                  # A window switcher, run dialog and dmenu replacement
    "polybar"               # A fast and easy-to-use status bar
    "numlockx"              # Turns on the numlock key in X11
    "bspwm"                 # Tiling window manager based on binary space partitioning
)


echo -e "Fonts:\n\t${FONTS[*]}"
echo -e "Themes:\n\t${THEMES[*]}"
echo -e "Utils:\n\t${UTILS[*]}"
echo -e "Media:\n\t${MEDIA[*]}"
echo -e "WM:\n\t${WM[*]}"

pamac install --as-deps ${FONTS[*]} ${THEMES[*]} ${UTILS[*]} ${MEDIA[*]} ${WM[*]}