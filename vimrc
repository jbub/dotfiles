" initial config
set nocompatible
filetype off
filetype plugin indent off

" enable syntax highlighting
filetype plugin indent on
syntax on

"
" Base
"

set encoding=utf-8                   " default encoding is utf-8
set spelllang=en_gb                  " set region
set history=700                      " limit commands history
set ffs=unix,dos,mac                 " default file type is unix
set autoread                         " auto read external file changes
set noerrorbells                     " disable all sounds
set backspace=indent,eol,start       " real backspace

"
" Gui
"

set showcmd                          " show current typed command
set showmode                         " show current mode
set number                           " show line numbers
set guioptions-=m                    " disable menu
set guioptions-=r                    " disable right scrollbar
set guioptions-=R                    " disable right scrollbar
set guioptions-=l                    " disable left scrollbar
set guioptions-=L                    " disable left scrollbar
set guioptions-=T                    " disable toolbar
set wildmenu                         " turn on the wild menu
set ruler                            " show current position
set mousehide                        " hide mouse when typing
set cmdheight=2                      " command bar height
set switchbuf=usetab,newtab          " re-use a tab/window otherwise open a new tab

"
" Status bar
"

" show status line
set laststatus=2

"
" Indentation
"
set expandtab                        " expand tabs to spaces in insert mode
set smarttab                         " use smart tabs
set tabstop=4                        " use 4 spaces for 1 tab
set softtabstop=4                    " use 4 spaces in insert mode
set shiftwidth=4                     " use 4 spaces for reindenting operations
set ai                               " auto indent
set si                               " smart indent
set wrap                             " wrap lines
set tw=100                           " break line after 100 characters

"
" Backups
"

set nobackup                         " disable backups
set nowb                             " no automatic backup before overwriting
set noswapfile                       " do not create swap files

" file type based syntax highlighting
au BufRead,BufNewFile *.sublime-settings set filetype=javascript
