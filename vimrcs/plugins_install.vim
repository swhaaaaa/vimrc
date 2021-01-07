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
Plug 'yianwillis/vimcdoc'
Plug 'Lokaltog/vim-powerline'


" Initialize plugin system
call plug#end()

endif

