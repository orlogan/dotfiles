# sourced on all invocations of the shell
# unless -f is set.

# It should contain commands to set cmd search path
# As well as other important environment variables
#  `.zshenv' should not contain commands that produce output
# or assume the shell is attached to a tty. 

typeset -U path PATH
path=(~/.local/bin $path)


# IDK why thats there, but commenting it might break rust
. "$HOME/.cargo/env"

if [ -e /home/occam/.nix-profile/etc/profile.d/nix.sh ]; then . /home/occam/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
