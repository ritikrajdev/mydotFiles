alias ls='ls --color=auto'
#alias grep='grep --colour auto'
alias diff="diff --color"

alias ll="exa -lgh"
alias lla="exa -lagh"
alias tree="exa --tree"

alias valgrindl='valgrind --track-origins yes --leak-check full --show-leak-kinds all -s'

alias rr=ranger

# abbreviations

abbr --add 	vim		"nvim"
abbr --add 	grep	"rg"
abbr --add 	g++		"g++ -std=c++17 -Wall"
abbr --add 	pyma	"python manage.py"

abbr --add 	kssh	"kitty +kitten ssh"
abbr --add 	kdiff	"kitty +kitten diff"
abbr --add 	icat	"kitty +kitten icat"

abbr --add	gdk		"git difftool --no-symlinks --dir-diff" # git diff kitty

