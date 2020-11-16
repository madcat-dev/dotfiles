#
# ~/.zshrc
#

# Include default config
[[ -f ~/.config/shell/zshrc ]] && source ~/.config/shell/zshrc

export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export MONITOR=HDMI-0
export TERMINAL=kitty

path=(
    $HOME/.bin
    $path
)

