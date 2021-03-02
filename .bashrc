# Deafult PS1
# PS1='[\u@\h \W]\$ '

PS1="\e[1;32m\u@\h\e[0m \e[0;34m\W\e[0m : "

shopt -s histappend

HISTSIZE=500000
HISTFILESIZE=5000000

# requirements: bash-completion
source /usr/share/bash-completion/bash_completion

# Sourcing shell files
for file in ~/.shell/POSIX/*
do
	source $file
done

