
source $HOME/.shellrc

## My Color Setup From Here !!

autoload -U colors && colors

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="%B"                 # Make Bold
PS1+="%{$fg[green]%}"    # Color Green

PS1+="%n"                # Username
PS1+="@"                 # Simple @ symbol
PS1+="%M"                # Hostname and a space

PS1+="%{$reset_color%}"  # Reset Color

PS1+=" "                 # Just a space !

PS1+="%{$fg[blue]%}"     # Color Green

PS1+="%c"                # Current Directory and a space

PS1+="%b"                # Bold Off
PS1+="%{$reset_color%}"  # Reset Color

PS1+=" : "


# Blur Background for Kitty and Yakuake {{{
if [[ $(ps --no-header -p $PPID -o comm) =~ '^yakuake|kitty$' ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi
# }}}


########################################################################################################################
#
# End of .zshrc written by Ritik
#
########################################################################################################################


## Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
bindkey -e

## End of lines configured by zsh-newuser-install
## The following lines were added by compinstall
zstyle :compinstall filename '/home/ritik/.zshrc'

## AutoCd
setopt autocd

## Prompt Styles !!
# autoload -Uz promptinit
# promptinit
# prompt redhat


autoload -Uz compinit
compinit
## End of lines added by compinstall
