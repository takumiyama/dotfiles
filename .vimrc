"vi互換ではなくvimのデフォルト設定にする
set nocompatible

"----------
"表示
"----------
syntax on
"行番号を表示
set number
"ルーラーを表示
set ruler

"カーソルの上下に表示する最小行数
set scrolloff=2
"括弧入力時の対応する括弧を表示
set showmatch
"対応する括弧の表示時間を2にする
set matchtime=2
"タブ、行末の半角スペースを明示的に表示
set list
set listchars=tab:^\ ,trail:~

"----------
" vue.js
"----------
autocmd BufNewFile,BufRead *.vue set filetype=html

"----------
"入力
"----------
"タブをスペースに変換
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
"オートインデントを有効
set autoindent
set backspace=indent,eol,start

"----------
"検索
"----------
"検索の時に大文字小文字を区別しない
"ただし大文字小文字の両方が含まれている場合は大文字小文字を区別する
set ignorecase
set smartcase
"検索時にファイルの最後まで行ったら最初に戻る
set wrapscan
"インクリメンタルサーチ
set incsearch
"検索文字の強調表示
set hlsearch
"ESCキー連打でハイライトを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" ----------------
"dein settings
"-----------------
if &compatible
  set nocompatible
endif
" dein.vimのディレクトリ
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/dein.vim'

if &runtimepath !~# '/dein.vim'
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let s:toml = s:dein_dir . '/.dein.toml'
  let s:lazy_toml = s:dein_dir . '/.dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

"ファイルタイププラグインを有効にする
filetype plugin indent on
