
source $HOME/.shellrc

## My Color Setup From Here !!

autoload -U colors && colors

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="%B"                   # Make Bold
PS1+="%{$fg[green]%}"      # Color Green

PS1+="%n"                  # Username
PS1+="@"                   # Simple @ symbol
PS1+="%M"                  # Hostname and a space

PS1+="%{$reset_color%}"    # Reset Color

PS1+=" "                   # Just a space !

PS1+="%{$fg[blue]%}"       # Color Green

PS1+="%c"                  # Current Directory and a space

PS1+="%b"                  # Bold Off
PS1+="%{$reset_color%}"    # Reset Color

PS1+=" : "

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

RPROMPT="%{$fg[magenta]%}" # Color Magenta 
RPROMPT+=\$vcs_info_msg_0_
RPROMPT+="%{$reset_color%}" # Reset Color


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

## Pacman Hook for compinit on installation or update
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd
## End of lines added by compinstall
