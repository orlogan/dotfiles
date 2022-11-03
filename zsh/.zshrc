# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Config for ZSH

# Activate colors and create prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



alias ls='exa -lahFHG\@ --git --group-directories-first --colour-scale --no-user --icons'
alias cd='z'
alias vi='nvim'
alias n='nvim'
alias untar='tar -zxvf'
alias p='pacman'
alias sp='sudo pacman'
alias Syu='sudo pacman -Syu'
alias ap='sudo pacman -S'
# removes package and all dependencies
# that arent also dependencies of something else
alias rp='sudo pacman -Rs'

alias t='todo.sh'
alias ta='todo.sh add'

alias conf='nvim $HOME/.dotfiles/README.md'
alias music='ncmpcpp'

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Print color test on startup
# source $HOME/bin/colors

# add ability for nix to use zsh
source $HOME/bin/zsh-nix-shell/nix-shell.plugin.zsh

# add completion for nix
source $HOME/bin/nix-zsh-completions/nix-zsh-completions.plugin.zsh
fpath=($HOME/bin/nix-zsh-completions $fpath)
autoload -U compinit && compinit

# Add zoxide to replace cd
eval "$(zoxide init zsh)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include dot files

# Vi Mode
bindkey -v
export KEYTIMEOUT=1

# Use vim bindings in tab complete
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# sourcing fzf stuff
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Ranger Config
# Im not exactly sure what this does
RANGER_LOAD_DEFAULT_RC=FALSE


[ -f "/home/occam/.ghcup/env" ] && source "/home/occam/.ghcup/env" # ghcup-env
source ~/powerlevel10k/powerlevel10k.zsh-theme


# powerlevel propmt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null



source /home/occam/.config/broot/launcher/bash/br
