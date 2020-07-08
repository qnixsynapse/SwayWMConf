# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
systemctl --user import-environment
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export MOZ_ENABLE_WAYLAND=1
export IMSETTINGS_INTEGRATE_DESKTOP=yes
export IMSETTINGS_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export IBUS_ENABLE_SYNC_MODE=1

# User specific environment and startup programs
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec sway
fi
