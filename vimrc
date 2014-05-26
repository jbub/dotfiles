set nocompatible
filetype off
filetype plugin indent off

" set the runtime path
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=$GOROOT/misc/vim

call vundle#begin()

Bundle "fholgado/Molokai2"

call vundle#end()

" set region
set spelllang=en_gb

" limit commands history
set history=700

" disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" show status line
set laststatus=2

" turn on the wild menu
set wildmenu

" show current position
set ruler

" hide mouse when typing
set mousehide

" command bar height
set cmdheight=2

" enable syntax highlighting
filetype plugin indent on
syntax on

" default file type is unix
set ffs=unix,dos,mac

" expand tabs to spaces
set expandtab

" use smart tabs
set smarttab

" re-use a tab/window otherwise open a new tab
set switchbuf=usetab,newtab

" use 4 spaces for 1 tab
set shiftwidth=4
set tabstop=4

" break line after 100 characters
set lbr
set tw=100

" auto indent
set ai

" smart indent
set si

" wrap lines
set wrap

" auto read external file changes
set autoread

" disable backups
set nobackup
set nowb
set noswapfile

" run gofmt on all go files after saving
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" enable go compiler plugin
autocmd FileType go compiler go

colorscheme Molokai2

let g:fullscreen_colorscheme = "iawriter"
let g:fullscreen_font = "Cousine:h14"
let g:normal_colorscheme = "Molokai2"
let g:normal_font="Monaco:h13"