" initial config
set nocompatible
filetype off
filetype plugin indent off

" runtime path
set runtimepath+=~/.vim/bundle/Vundle.vim

" vundle
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()

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

"
" Color scheme
"

if has("gui_macvim")
    set guifont=Ubuntu\ Mono:h13     " set default font
    set anti                         " enable antializing
    let macvim_skip_colorscheme=1    " disable mac vim color scheme
    let g:molokai_original=1         " use original molokai color scheme
    colorscheme molokai              " set molokai colorscheme
endif

" file type based syntax highlighting
au BufRead,BufNewFile *.sublime-settings set filetype=javascript

" YouCompleteMe plugin settings
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" vim-go

let g:play_browser_command = ''
let g:go_play_open_browser = 0
let g:go_auto_type_info = 0
let g:go_fmt_fail_silently = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_options = ''
let g:go_doc_keywordprg_enabled = 1
let g:go_snippet_engine = "ultisnips"
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
