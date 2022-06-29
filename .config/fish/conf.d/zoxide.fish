if test -e /usr/bin/zoxide
	set -x _ZO_DATA_DIR "$HOME/.config/zoxide/"
	zoxide init fish | source
end
