set nocompatible
set number
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
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
syntax on
colorscheme wombat256
let g:netrw_liststyle=3
set splitbelow
set splitright
set runtimepath^=~/.vim/bundle/ctrlp.vim
set hlsearch
set incsearch
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
