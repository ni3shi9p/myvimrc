" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'scrooloose/nerdtree'
 "NeoBundle 'Townk/Vim-autoclose'
 NeoBundle 'scrooloose/syntastic'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 nnoremap <silent><C-e> :NERDTreeToggle<CR>
 inoremap <C-b> <Left>
 inoremap <C-d> <Del>
 imap <C-f> <Right>
 imap <C-e> <End>
 imap <C-a> <Home>

 set tabstop=4
 set nu
 syntax on
 retab 4
