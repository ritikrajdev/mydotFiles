#!/bin/sh

install() {
	local ask_permission="i"

	if [ "$1" = "-y" ]
	then
		ask_permission="f"
	fi

	local current_directory=$(dirname $(realpath $0))

	ln -s${ask_permission} 	${current_directory}/.*rc		~/
	ln -s${ask_permission} 	${current_directory}/.*profile		~/
	ln -s${ask_permission} 	${current_directory}/.gitconfig		~/
	ln -s${ask_permission} 	${current_directory}/.shell 		~/

	mkdir -p ~/.ssh
	ln -s${ask_permission} 	${current_directory}/.ssh/config	~/.ssh/

	mkdir -p ~/.local/share/backgrounds/custom
	ln -s${ask_permission} 	${current_directory}/.local/share/backgrounds/custom/ghosts.jpg	~/.local/share/backgrounds/custom/

	for config in .config/*
	do
		ln -s${ask_permission} ${current_directory}/${config} ~/.config/
	done
}

install $1

