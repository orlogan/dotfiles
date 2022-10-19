
# Automatically run windows manager on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
	exec startx
fi

