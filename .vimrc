call plug#begin('~/.vim/plugged')

	" Plugin Main COC for lanuage
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Plugin for Prettier
	Plug 'prettier/vim-prettier'

	" Plugin for table
	Plug 'dhruvasagar/vim-table-mode'

	" Plugin for .rst
	Plug 'Rykka/riv.vim'

	" Plugin for Live Web Server
	Plug 'turbio/bracey.vim'

	" Plugin for Colors Vim
	Plug 'chrisbra/Colorizer'

	" Vim Comments
	Plug 'tpope/vim-commentary'

call plug#end()

set tabstop=4 shiftwidth=4 relativenumber number

" Auto Start show Color for Colorizer Plugin
let g:colorizer_auto_color=1

