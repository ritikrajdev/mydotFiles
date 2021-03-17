# fzf, fd Search (cd or open up a file)

alias fzfd=skimd
function skimd()
{
	# Search Directory and cd
	local _directory=`FZF_DEFAULT_COMMAND="fd --hidden --exclude .git --type d" fzf`

	if [[ ${#_directory} -ne 0 ]]
	then
		nvim $_directory
	fi

}


alias fzff=skimf
function skimf()
{
	# Search file and open in vim
	local _file=`FZF_DEFAULT_COMMAND="fd --hidden --type f" fzf`
	
	if [[ ${#_file} -ne 0 ]]
	then
		nvim $_file
	fi
}

