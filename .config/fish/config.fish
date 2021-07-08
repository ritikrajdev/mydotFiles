if test -e /usr/share/fish/vendor_functions.d/bass.fish
	bass source /etc/profile
end

if test -e /bin/pyenv
	/bin/pyenv init - | source
end

