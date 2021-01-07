silent! if plug#begin('~/.vim_runtime/plugged')

function! BuildYCM(info)
if a:info.status == 'installed' || a:info.force
  !./install.py --clang-completer
endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'mileszs/ack.vim'
Plug 'tomasr/molokai'
Plug 'junegunn/vim-plug'
Plug 'Lokaltog/vim-powerline'
Plug 'brookhong/cscope.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/YankRing.vim'
Plug 'preservim/tagbar'
Plug 'yegappan/mru'
" Plug 'yegappan/grep'








" Initialize plugin system
call plug#end()

endif

