set -x GPG_TTY (tty)

# Github Starting ssh-agent for each shell, but only if one is not already running 
if test -z "$SSH_AUTH_SOCK"
        eval (ssh-agent -c) > /dev/null
end

