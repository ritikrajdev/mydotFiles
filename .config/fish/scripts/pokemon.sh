#!/bin/bash

function pokemon()
{
	# Do not End with trailing /
	local pokemon_directory="$HOME/Pictures/Pokemon"
	local file_prefix="Pokemon"

	if [ $# -eq 1 ]
	then
		if [ $1 = "install" ]
		then
			echo "Installing Pokemons !"
			mkdir -p $pokemon_directory
			echo "Made Directory"
			
			for (( i=1; i<=151 ; i++ ))
			do
				if [ -f "${pokemon_directory}/${file_prefix}${i}.png" ]
				then
					continue
				else
					curl -s "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${i}.png" > "${pokemon_directory}/${file_prefix}${i}.png"
					echo "Installed Pokemon ${i} ..."
				fi
			done

			echo "Installed"
		else
			return 1
		fi

	elif [ $TERM = "xterm-kitty" ]
	then
		local number_of_pokemons=$(ls -1 "${pokemon_directory}/" | wc -l)
		local pokemon_number=$(( RANDOM % (number_of_pokemons) + 1 )) 
		
		if [ -f "${pokemon_directory}/${file_prefix}${pokemon_number}.png" ]
		then
			kitty +kitten icat "${pokemon_directory}/${file_prefix}${pokemon_number}.png"
		else
			echo "Use following command to install pokemons :-"
			echo "pokemon install"
			return 1
		fi
	else
		return 1
	fi

	return 0
}

pokemon $@

