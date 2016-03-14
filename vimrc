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
" NEDRTree settings                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"****open a NERDTree automatically when vim starts up ****
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

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
set ruler " show the cursor position

"****Folding****
set foldenable
set foldmethod=syntax "fold and unfold code blocks
set foldcolumn=0 "the width of folding
setlocal foldlevel=1 "only fold for just one layer
set foldlevelstart=99 "no fold at open up

"****encoding****
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set termencoding=utf-8
set encoding=utf-8

"****vim indent****
filetype plugin indent on " show existing tab with 4 spaces width
set expandtab
set autoindent
set smartindent
set tabstop=4 " when indenting with '>', use 4 spaces width
set shiftwidth=4 " On pressing tab, insert 4 spaces

"****vim autoclose tags****


"****Color scheme settings****
syntax enable
set background=dark
colorscheme solarized

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
