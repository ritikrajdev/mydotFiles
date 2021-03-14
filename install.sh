#!/bin/sh

main() {

	local current_directory=$(dirname $(realpath $0))

	echo $current_directory

	ln -si 	${current_directory}/.*rc			~/
	ln -si 	${current_directory}/.*profile		~/
	ln -si 	${current_directory}/.gitconfig		~/
	ln -si 	${current_directory}/.shell 		~/
	ln -si 	${current_directory}/.ssh/config	~/.ssh/

	ln -si 	${current_directory}/.local/share/backgrounds/custom/ghosts.jpg	~/.local/share/backgrounds/custom/

	for config in .config/*
	do
		ln -si ${current_directory}/${config} ~/.config/
	done
}

main
