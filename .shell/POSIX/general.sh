# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# FZF for bash or zsh
for file in /usr/share/fzf/*.`basename $(readlink /proc/$$/exe)`
do
	source $file
done

eval "$(pyenv init -)"

