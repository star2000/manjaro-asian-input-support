# https://wiki.archlinux.org/index.php/IBus
im=ibus
export GTK_IM_MODULE=$im
export QT_IM_MODULE=$im
export XMODIFIERS=@im=$im
export INPUT_METHOD=$im
export SDL_IM_MODULE=$im
