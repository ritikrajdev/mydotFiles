# Enable Native Kitty and Mozilla on Wayland
export MOZ_ENABLE_WAYLAND=1
export KITTY_ENABLE_WAYLAND=1

# Enable use of Qt Applications
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

# Enable Java Applications like Pycharm n Android Studio
export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk/

