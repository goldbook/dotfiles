set nocompatible      " We're running Vim, not Vi!

set encoding=utf-8

" ==== neobundle ====
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
set laststatus=2
" ==== neobundle ====

set expandtab
set tabstop=2       " 画面上のタブ幅
set shiftwidth=2    " インデント時に自動的に挿入されるタブ幅
set softtabstop=2   " キーボードで<Tab>キーを押したときに挿入される空白の量

" ハイライト検索を有効化
set hlsearch

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
