NeoBundle 'nathanaelkane/vim-indent-guides'

let g:indent_guides_auto_colors = 0
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=236
set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

