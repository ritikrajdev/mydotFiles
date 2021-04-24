#!/usr/bin/fish

# Paths
fish_add_path ~/.local/bin/
fish_add_path ~/Development/flutter/bin

## Android Path
fish_add_path ~/Development/Android/Sdk/platform-tools
fish_add_path ~/Development/Android/Sdk/tools

# General Variables
set -Ux CHROME_EXECUTABLE "/usr/bin/chromium"
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -Ux EDITOR "nvim"

# FZF
set -Ux FZF_DEFAULT_COMMAND "fd --exclude '*cache'"
set -Ux FZF_DEFAULT_OPTS "--exact --border"
set -Ux FZF_ALT_C_COMMAND "$FZF_DEFAULT_COMMAND --type d"

