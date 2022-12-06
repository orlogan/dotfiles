# Used for executing user's commands at start, 
# will be read when starting as a login shell. 
# Typically used to autostart graphical sessions
# and to set session-wide environment variables.

# Automatically run windows manager on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  [[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
  [[ -f ~/.Xresources ]] && xrdb ~/.Xresources
	exec startx
fi

