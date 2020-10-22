call plug#begin('~/.vim/plugged')

" Plugin for auto bracket/quotes close
Plug 'jiangmiao/auto-pairs'

" Plugin Main COC for lanuage
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin for Prettier
Plug 'prettier/vim-prettier'

" Plugin for table
Plug 'dhruvasagar/vim-table-mode'

" Plugin for .rst
Plug 'Rykka/riv.vim'

call plug#end()

set tabstop=4 shiftwidth=4 number 
colorscheme nord

" Coc Vim Python Linter
let g:python3_host_prog = '/usr/bin/python3'
