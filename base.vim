filetype off
filetype plugin indent off

" NeoBundle
if has('vim_starting')
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

augroup MyAutoCmd
  autocmd!
augroup END

runtime! config/*.vim

filetype plugin indent on

autocmd MyAutoCmd FileType * setlocal formatoptions-=ro 

if(!empty(neobundle#get_not_installed_bundle_names()))
  echomsg 'Not installed bundles: '
    \ string(neobundle#get_not_installed_bundle_names())
  if confirm('Install bundles now?', "yes\nNo", 2) == 1
    NeoBundleInstall
    source ~/.vimrc
  endif
end
