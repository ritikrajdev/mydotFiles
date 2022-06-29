set -x GPG_TTY (tty)

if test -z "$SSH_AUTH_SOCK"
        eval (ssh-agent -c) > /dev/null
end
