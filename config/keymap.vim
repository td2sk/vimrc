" wrapされた擬似行に対してj,k可能
noremap j gj
noremap k gk

" Exコマンドを呼びやすくする
noremap ; :
noremap : ;

" C-jで戻る
imap <C-j> <esc>

" ヘルプの短縮
noremap <C-h> :<C-u>help<Space>

" 保存の短縮
" noremap <C-w> :w<Return>
" ウィンドウ操作のプレフィックス(Ctrl-w)と衝突するので無効とする

