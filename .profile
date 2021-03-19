# Paths
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/Development/flutter/bin"

## Android Path
export PATH="$PATH:$HOME/Development/Android/Sdk/platform-tools"
export PATH="$PATH:$HOME/Development/Android/Sdk/tools"

# General Variables
export CHROME_EXECUTABLE="/usr/bin/chromium"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR=nvim

# FZF
export FZF_DEFAULT_COMMAND="fd --hidden --exclude .git --exclude .dartServer --exclude '*cache' --exclude .gradle"
export FZF_DEFAULT_OPTS="--exact --border"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

