""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings					       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"nerdtree
Plugin 'scrooloose/nerdtree'

"Autocompletion
Plugin 'Valloric/YouCompleteMe'

"vim-devicons
Plugin 'ryanoasis/vim-devicons'

"vim-airline
Plugin 'vim-airline/vim-airline'

"emmet-vim
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Font Settings for icons                                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h11

" required vim-airline
let g:airline_powerline_fonts=1

"enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

"enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VIM Interface Settings					       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
setlocal spell spelllang=en_au
set clipboard=unnamed "copy and paste across different windows
set guioptions-=L "remove left-hand scroll bar

"****encoding****
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set termencoding=utf-8
set encoding=utf-8

"****vim indent****
filetype plugin indent on " show existing tab with 4 spaces width
set tabstop=4 " when indenting with '>', use 4 spaces width
set shiftwidth=4 " On pressing tab, insert 4 spaces
set expandtab

"****Color scheme settings****
syntax enable
set background=dark
colorscheme solarized
