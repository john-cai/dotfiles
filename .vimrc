set nocompatible
set number
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'ntpeters/vim-better-whitespace'
Bundle 'tpope/vim-markdown'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'
call vundle#end()
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
syntax on
colorscheme wombat256
let g:netrw_liststyle=3
set splitbelow
set splitright
set runtimepath^=~/.vim/bundle/ctrlp.vim
set hlsearch
set incsearch
autocmd VimResized * wincmd =
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
let g:neocomplete#enable_at_startup = 1
