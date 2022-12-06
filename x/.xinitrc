# Description : This file manage the client programs during a start of the
#               X Window System.

[[ -f $HOME/.Xresources ]] && xrdb $HOME/.Xresources
[[ -f $HOME/.Xmodmap ]] && xmodmap $HOME/.Xmodmap 
~/.fehbg &

exec i3
