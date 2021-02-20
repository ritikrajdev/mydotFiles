#!/bin/bash

# Enable Native Kitty and Mozilla on Wayland
export MOZ_ENABLE_WAYLAND=1
export KITTY_ENABLE_WAYLAND=1

# Enable use of Qt Applications
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

