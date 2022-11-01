# Awesome only looks at this file, it won't look at .zshrc
typeset -U path PATH
path=(~/.local/bin $path)

export PATH

. "$HOME/.cargo/env"
