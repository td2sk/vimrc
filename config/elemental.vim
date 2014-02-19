" スワップファイルを生成しない
set noswapfile
let &titleold="zsh"


" 改行コードの自動認識
set fileformats=unix,dos,mac

" ビープ音を鳴らさない
set vb t_vb=

" バックスペースで削除可能なものを指定
" indent : 行頭の空白
" eol    : 改行
" start  : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

" 未保存でもバッファ切り替え可能
set hidden

" 起動メッセージを非表示
set shortmess& shortmess+=I

" スクロール時の余白
set scrolloff=5

" 他で書き換えられたら自動で読みなおす
set autoread

" 行番号表示
" set number

" コマンド補完開始キー
set wildchar=<tab>

" カーソル移動で行頭、行末を通過可能にする
set whichwrap=b,s,h,l,<,>,[,]

" カレントディレクトリの自動変更
" set autochdir
" vimshellと干渉するため無効化
"

" カーソル位置の記憶
autocmd MyAutoCmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g'\"" |
            \ endif

" カレントウィンドウにのみ罫線を引く
autocmd MyAutoCmd WinLeave * set nocursorline
autocmd MyAutoCmd WinEnter,BufRead * set cursorline
