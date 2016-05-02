""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings                                              "
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

"indent Line
Plugin 'Yggdroot/indentLine'

"html file indent
Plugin 'othree/html5.vim'

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
set encoding=utf-8

" required vim-airline
let g:airline_powerline_fonts=1

"enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes=1

"enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VIM Interface Settings                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
setlocal spell spelllang=en_au
set clipboard=unnamed "copy and paste across different windows
set guioptions-=L "remove left-hand scroll bar
set ruler "show the cursor position
set autoread "if the file is updated, vim automatically read the changes
set showmatch    "highlight parentheless matchup
set matchtime=0
set nobackup "close backup
set autochdir "automatically go the directory where current file is
set cursorline "add underline of the line where cursor is in
set cursorcolumn "hightlight the column where cursor is in
" set nowrap "keep long information showing in one line

"no backup
set nobackup
set noswapfile

"****Folding****
set foldenable
set foldmethod=indent "fold and unfold based on indent or chnage to syntax
set foldcolumn=0 "the width of folding
setlocal foldlevel=1 "only fold for just one layer
set foldlevelstart=99 "no fold at open up
" using space to fold and unfold rather than zo zc
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

"****encoding****
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set termencoding=utf-8
set encoding=utf-8

"****vim indent****

" show existing tab with 4 spaces width
set expandtab
set autoindent
set smartindent
set tabstop=4 " when indenting with '>', use 4 spaces width
set shiftwidth=4 " On pressing tab, insert 4 spaces
set softtabstop=4 " backspace to delete 4 spaces at one time

"indent-line
let g:indent_char = 'c'
let g:indentLine_enabled=1
let g:indentLine_leadingSpaceChar='·'

let delimitMate_expand_cr=1

" autoindent while press curly bracket {
" inoremap { {<CR>}<up><end><CR>

"****vim searching****
set incsearch "show instant search result
set nohlsearch "don't highlight the search result
set smartcase "automatically detect lower or uppercase
set ignorecase

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tag List                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let Tlist_Show_One_File = 1     "only show tags of current file
let Tlist_Exit_OnlyWindow = 1   "if the window of taglist is the last window, exit vim
let Tlist_Use_Right_Window = 1  "show taglist window at right 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Task List                                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tlTokenList = ["FIXIT", "TODO", "ATTENTION"]

silent! call repeat#set("\<Plug>MappingToRepeatCommand",3)
