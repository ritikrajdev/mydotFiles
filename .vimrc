" Requirements -> vim-plug or neovim-plug

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

	" Dart Vim Plugin
	Plug 'dart-lang/dart-vim-plugin'

	" Jsonc vim syntax highlighting
	Plug 'kevinoid/vim-jsonc'

	" For dynamic auto completions dbtext.vim
	Plug 'vim-scripts/dbext.vim'

call plug#end()

set tabstop=4 shiftwidth=4 relativenumber number

" Auto Start show Color for Colorizer Plugin
let g:colorizer_auto_color=1

let g:coc_global_extensions = [
			\"coc-clangd",
			\"coc-css",
			\"coc-discord-neovim",
			\"coc-emmet",
			\"coc-flutter",
			\"coc-git",
			\"coc-html",
			\"coc-java",
			\"coc-json",
			\"coc-omnisharp",
			\"coc-pairs",
			\"coc-pyright",
			\"coc-rls",
			\"coc-sh",
			\"coc-tsserver",
			\"coc-yaml"
\] 

