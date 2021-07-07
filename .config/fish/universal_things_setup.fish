#!/usr/bin/fish

# Paths
fish_add_path ~/.local/bin/

## Android Path
fish_add_path ~/Development/Android/Sdk/platform-tools
fish_add_path ~/Development/Android/Sdk/tools

# General Variables
set -Ux CHROME_EXECUTABLE "/usr/bin/chromium"
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -Ux EDITOR "nvim"
set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux JAVA_HOME "/usr/lib/jvm/java-11-openjdk/"

# FZF
set -Ux FZF_DEFAULT_COMMAND "fd --exclude '*cache'"
set -Ux FZF_DEFAULT_OPTS "--exact --border"
set -Ux FZF_ALT_C_COMMAND "$FZF_DEFAULT_COMMAND --type d --exclude node_modules"

# Pyenv
set -Ux PYENV_ROOT $HOME/.pyenv/
fish_add_path $PYENV_ROOT/bin

