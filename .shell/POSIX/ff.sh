# fzf Search (cd or open up a file)
ff()
{
	local result_dir=$(fzf -q "$1")
	if [ -f "$result_dir" ]
	then
		rifle -c "$HOME/.config/ranger/rifle.conf" "$result_dir"
	elif [ -d "$result_dir" ]
	then
		cd "$result_dir"

		if [ -d "./venv" ]
		then
			source ./venv/bin/activate
		fi

	else
		return 1
	fi
	
	return 0
}

