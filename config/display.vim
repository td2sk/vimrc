" タイトルをウィンドウ枠に表示
set title

" 行番号を表示しない
set nonumber

" ルーラー表示
set ruler

" 入力中のコマンドをステータスに表示
set showcmd

" ステータスラインを常に表示
set laststatus=2

" 括弧入力時に対応する括弧を表示
set showmatch

" 対応する括弧の表示時間
set matchtime=2

" highlighting
syntax on

" 検索文字列のハイライト
set hlsearch

" コメント文の色を表示
" highlight Comment ctermfg=DarkCyan

" コマンドライン補完を拡張モードに
set wildmenu

" 自動改行する一行の閾値(0なら自動改行しない)
set textwidth=0

" 折り返し表示
set wrap

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
