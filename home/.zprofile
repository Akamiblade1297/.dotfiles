if [[ $(systemctl --user is-active mpd) != 'active' ]]; then
    systemctl --user start mpd
fi
mpc pause >/dev/null; mpc play >/dev/null
if [[ $(tty) = '/dev/tty1' ]]; then
    if ! pgrep hyprland > /dev/null; then
        hyprland
    fi
elif [[ $COLORTERM = 'kmscon' ]]; then
    tmuxinator start default
fi
