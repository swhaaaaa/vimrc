silent! if plug#begin('~/.vim_runtime/plugged')

Plug 'mileszs/ack.vim'
Plug 'tomasr/molokai'

function! BuildYCM(info)
if a:info.status == 'installed' || a:info.force
  !./install.py --clang-completer
endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Initialize plugin system
call plug#end()

endif
