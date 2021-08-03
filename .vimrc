"------------------------------------------------------------------------------"
"                                  EXPLANATION                                 "
"------------------------------------------------------------------------------"
" In his file are all self made settings for Vim editor.
" If there are JetBrains IDEs and a VimPlug-Plugin is installed, there is a
" .ideavimrc. It maps to the regular .vimrc.

"------------------------------------"
"          External-Files            "
"------------------------------------"
" To keep this file slim as possible, mount extensions from other files.
"so ~/.vim/plugins.vim
" Load plugins from plugins.vim file.
" To install plugins use: :PlugInstall

"------------------------------------"
"               Mappings             "
"------------------------------------"
" Mapping for normal mode: nmap
" Mapping for insert mode: imap
" Mapping for keys       : noremap

"------------------------------------"
"               Switches             "
"------------------------------------"
" Turn on: 1
" Turn off: 0

"------------------------------------------------------------------------------"
"                                 AUTO-COMMANDS                                "
"------------------------------------------------------------------------------"
"autocmd TextChanged,TextChangedI <buffer> silent write
" Auto save file everytime something where changed.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
" Automatically source .vimrc on safe.

"------------------------------------------------------------------------------"
"                                 ENVIRONMENT                                  "
"------------------------------------------------------------------------------"

"------------------------------------"
"      Environment --> Settings      "
"------------------------------------"
colorscheme darkblue
" Set the color theme of VIM.

filetype plugin indent on
" Set specific text highlights in case of the file type.

let mapleader = ','
" Set <Leader> to , (standard is \).

set autoindent
" Set cursor on a line wrap automatically into indent level.

set backspace=indent,eol,start
" Delete with backspace in insert mode.

set encoding=utf-8
" Activates Unicode UTF-8 encoding.

set foldcolumn=1
" Show a column for folding sections on the right hand.

set guifont=Menlo:h14
" Set font and font size (only MacVim, for terminal do it in terminal preferences).

set history=1000
" Number of command line history entries.

set linespace=15
" Set linespacings (only MacVim, for terminal do it in terminal preferences).

set nocompatible
" Disable overwriting from VI to VIM.

set number
" Display line number on the right hand.

set relativenumber
" Display the relative line number before and above the actual line.
" Are both active, they become hybrid.

set scrolloff=7
" Start to scroll if there is a space of n lines.

set t_CO=256
" Use 256 colors for Terminal Vim.

set tabstop=4
" Set the size of tab stops.

set tw=72
" Set text wrap automatically at sign number ...
" 72 is perfect size for GitLab and GitHub.

set undodir=$HOME/vimundo/
" Mount undo directory.

set undofile
" Safe undo steps over reboot.

set undolevels=1000
" Number of safed undo steps.

set wildmenu
" Show a line with autocomplete opportunities (shift + tab to walk)

syntax enable
" Syntax highlighting in case of file type.

"------------------------------------------------------------------------------"
"                                 NORMAL MODE                                  "
"------------------------------------------------------------------------------"

"------------------------------------"
"    Normal Mode --> Command Line    "
"------------------------------------"
nmap <Leader>vrc :tabedit $MYVIMRC<cr>
" ,vrc is open ~/.vimrc file.

nmap <Leader>cb :bd
" ,cb is close buffer.

"------------------------------------"
"       Normal Mode --> Delete       "
"------------------------------------"
noremap d x
" d is delete sign on cursor (standard is x).

noremap dl dd
" dl is delete line (standard is dd).

noremap df D
" df is delete from cursor till end of line (standard is D).

"------------------------------------"
"        Normal Mode --> Motion      "
"------------------------------------"
" Move left : h
" Move down : j
" Move up   : k
" Move right: l

noremap j h
" j is move left.

noremap ; l
" ; is move right.

noremap l j
" ; is move down.
