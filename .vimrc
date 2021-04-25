set number
set ruler
set cursorline
set cursorcolumn
set nowritebackup
set nobackup
set noswapfile
set smartindent
set backspace=indent,eol,start
set history=1000
set softtabstop=2
set expandtab
set virtualedit=onemore
set shiftwidth=2
set hlsearch

set encoding=utf-8

" set list は行末に改行コードを表示する設定
set list

" キーバインド
inoremap <silent> jj <ESC>

" ステータスライン
set statusline=%F%r[ENC=%{&fileencoding}][LOW=%l/%L]
set laststatus=2

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/ecat/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/ecat/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" My plugins
" -----------------------------------------------------------------------------
NeoBundle 'cohama/lexima.vim'
" -----------------------------------------------------------------------------

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
