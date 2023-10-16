# Android Studio
set -x ANDROID_HOME $XDG_DATA_HOME/android

# Bash
set -x HISTFILE $XDG_STATE_HOME/bash/history

# Cargo
set -x CARGO_HOME $XDG_DATA_HOME/cargo

# GNUPG
set -x GNUPGHOME  $XDG_DATA_HOME/gnupg

# GTK2
set -x GTK2_RC_FILES XDG_CONFIG_HOME/gtk-2.0/gtkrc

# Less
set -x LESSHISTFILE XDG_CACHE_HOME/less/history

# OpenJDK
set -x _JAVA_OPTIONS -Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java

# Python
set -x PYTHONSTARTUP $XDG_CONFIG_HOME/python/pythonrc

# Rustup
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
