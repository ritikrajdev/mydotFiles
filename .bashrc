
# Deafult PS1
# PS1='[\u@\h \W]\$ '

# My Configuration of PS1
PS1="\e[1;32m\u@\h\e[0m \e[0;34m\W\e[0m : "

# Sourcing actual Shell file !!
source $HOME/.shellrc

# Append to History Rather than overwriting !
shopt -s histappend

# History
HISTSIZE=50000
HISTFILESIZE=500000
