colorscheme darkblue

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
  call neobundle#begin(expand('~/.vim/bundle/'))

  NeoBundle 'fuenor/qfixgrep'
  NeoBundle 'git://github.com/timcharper/textile.vim.git'
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'kannokanno/previm'
  NeoBundle 'osyo-manga/vim-watchdogs'
  NeoBundle 'thinca/vim-quickrun'
  let g:quickrun_config = {}
  let g:quickrun_config['_'] = {
        \   'runner'                    : 'vimproc',
        \   'runner/vimproc/updatetime' : 100,
        \   'outputter'                 : 'multi:buffer:quickfix',
        \   'outputter/buffer/split'    : ''
        \}
  NeoBundle 'tpope/vim-markdown'
  NeoBundle 'tyru/open-browser.vim'
  NeoBundle 'vim-scripts/Align'
  let g:Align_xstrlen=3
  NeoBundle 'vim-scripts/SQLUtilities'
  NeoBundle "Chiel92/vim-autoformat"
  NeoBundle 'kchmck/vim-coffee-script'
  set laststatus=2
  NeoBundle 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_guide_size=1
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'fatih/vim-go'
  NeoBundle 'derekwyatt/vim-scala'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'mxw/vim-jsx'
  " if has('clientserver')
  "   NeoBundle 'thinca/vim-singleton'
  "   call singleton#enable()
  " endif
  call neobundle#end()
endif

"======== NeoBundle ========
au FileType php    set sw=4 ts=4 sw=4 sts=4 expandtab autoindent
au FileType ruby   set sw=2 ts=2 sw=2 sts=2 expandtab autoindent
au FileType eruby  set sw=2 ts=2 sw=2 sts=2 expandtab autoindent
au FileType smarty set sw=2 ts=2 sw=2 sts=2 expandtab autoindent
au FileType tsv    set sw=4 ts=4 sw=4 sts=4 autoindent
au FileType txt    set sw=2 ts=2 sw=2 sts=2 expandtab autoindent formatoptions=q
au FileType go     set sw=4 ts=4 sts=4 noet
set sw=2 ts=2 sw=2 sts=2 expandtab autoindent " デフォではソフトタブ

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

set backupdir=$HOME/.vim/backup " バックアップの作成先指定
let &directory = &backupdir     " バックアップとswpの作成先を同じに
set fileformats=unix,dos,mac    " 文字コード認識の設定
set grepprg=grep\ -nH
set helplang=ja                 " help日本語表示
set showtabline=2               " aeroスナップ外れ回避
set textwidth=0                 " 自動改行を無効にする
set virtualedit=block           " フリーカーソルモード
set guioptions+=a               " 選択部分をコピー
set autochdir                   " 編集中ファイルのディレクトリへ移動
set number
set list
set listchars=tab:^\ ,trail:~ "Tab、行末の半角スペースを明示的に表示する。

syntax on " Enable syntax highlighting

" for golang {{{
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" }}}

set guifont=MS_Gothic:h13

set hlsearch

set backspace=indent,eol,start " バックスペースが効かないの対策
