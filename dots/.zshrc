#
# ~/.zshrc
#

# Include default config
source ~/.shell/zshrc

export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export GOPATH=$HOME/.go

export EDITOR=/usr/bin/vim

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

alias mc='mc -d'
alias mcedit='mcedit -d'

# enable docker BuildKit backend
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1
