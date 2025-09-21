#!/usr/bin/env bash

# shellcheck disable=SC1091
source "$HOME/.config/waybar/scripts/theme-switcher.sh" 'fzf'

list=$(printf '%s\n' 'Shutdown' 'Reboot' 'Logout' 'Hibernate' 'Suspend')

options=(
	--border=sharp
	--border-label=' Power Menu '
	--height=~100%
	--highlight-line
	--no-input
	--pointer=
	--reverse
)
# shellcheck disable=SC2154
options+=("${colors[@]}")

selected=$(fzf "${options[@]}" <<<"$list")

[[ -z $selected ]] && exit 0

case "$selected" in
	'Shutdown') systemctl poweroff ;;
	'Reboot') systemctl reboot ;;
	'Logout') hyprctl dispatch exit ;;
	'Hibernate') systemctl hibernate ;;
	'Suspend') systemctl suspend ;;
esac
