export GPG_TTY=$(tty)

# Github Starting ssh-agent for each shell, but only if one is not already running 
if [[ ! "$SSH_AUTH_SOCK" ]]; then
        eval $(ssh-agent) > /dev/null
fi
