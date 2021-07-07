if test -e /usr/bin/zoxide
	zoxide init fish | source
end

set -x _ZO_DATA_DIR "$HOME/.config/zoxide/"

