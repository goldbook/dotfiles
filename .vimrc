set nocompatible
set enc=japan

set enc=utf-8
set fileencoding=utf-8

" if has('win32')
"   set shell=cmd.exe
" endif

"======== NeoBundle ========
filetype off            " for vundle

if has("vim_starting")
  set rtp+=$HOME/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/timcharper/textile.vim.git'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kannokanno/previm'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/SQLUtilities'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/vim-watchdogs'
let g:quickrun_config = {'runner' : 'vimproc'}
set laststatus=2
"======== NeoBundle ========
au FileType php    set sw=4 ts=4 sw=4 sts=4 expandtab autoindent
au FileType ruby   set sw=2 ts=2 sw=2 sts=2 expandtab autoindent
au FileType smarty set sw=2 ts=2 sw=2 sts=2 expandtab autoindent
au FileType tsv    set sw=4 ts=4 sw=4 sts=4 autoindent
au FileType txt    set sw=2 ts=2 sw=2 sts=2 expandtab autoindent formatoptions=q

au QuickfixCmdPost make,grep,grepadd,vimgrep copen

filetype indent on " Enable filetype-specific indenting
filetype on        " Enable filetype detection
filetype plugin on " Enable filetype-specific plugins

highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

let g:netrw_alto = 1      " 'o'でファイルを開くときは下側
let g:netrw_altv = 1      " 'v'でファイルを開くときは右側
let g:netrw_liststyle = 1 " ブラウジングでスワップファイルを作らない

" 見た目によるカーソル移動をする
noremap <DOWN> gj
noremap <UP>   gk

set backupdir=$HOME/.vim/backup               " バックアップの作成先指定
set fileformats=unix,dos,mac                  " 文字コード認識の設定
set grepprg=grep\ -nH
set helplang=ja                               " help日本語表示
set showtabline=2                             " aeroスナップ外れ回避
set sw=2 ts=2 sw=2 sts=2 expandtab autoindent " デフォではソフトタブ
set textwidth=0                               " 自動改行を無効にする
set virtualedit=block                         " フリーカーソルモード

syntax on " Enable syntax highlighting
