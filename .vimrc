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

	" For Syntax highlighting and writing fish scripts
	Plug 'dag/vim-fish'

	" Vim Pollen Plugin
	Plug 'wlangstroth/vim-racket'
	Plug 'otherjoel/vim-pollen'

	" Execute Scripts
	Plug 'EvanQuan/vim-executioner'
	
	" Markdown Preview
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

set tabstop=4 shiftwidth=4 relativenumber number

" Remember Folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Map ee to Executioner
noremap ee :Executioner<Enter>

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
			\"coc-yaml",
			\"coc-toml"
\] 

" Coc Config

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Tab Complete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


