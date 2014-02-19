NeoBundle 'itchyny/lightline.vim'

" lightline
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'],
      \            ['fugitive', 'my_filestate']]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'readonly': 'MyLightLineReadonly',
      \   'modified': 'MyLightLineModified',
      \   'my_filestate': 'MyLightLineFileState',
      \   'fugitive': 'MyLightLineFugitive'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyLightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyLightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyLightLineFileState()
  return ('' != MyLightLineReadonly() ? MyLightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyLightLineModified() ? ' ' . MyLightLineModified() : '')
endfunction

function! MyLightLineFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

