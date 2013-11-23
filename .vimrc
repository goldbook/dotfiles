set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set expandtab
set tabstop=2       " 画面上のタブ幅
set shiftwidth=2    " インデント時に自動的に挿入されるタブ幅
set softtabstop=2   " キーボードで<Tab>キーを押したときに挿入される空白の量

" ハイライト検索を有効化
set hlsearch
