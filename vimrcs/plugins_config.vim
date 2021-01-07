""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
"call pathogen#infect('~/.vim_runtime/plugged/{}')
call pathogen#infect('~/.vim_runtime/plugged_forked/{}')
"call pathogen#helptags()


" ----------------------------------------------------------------------------
" YouCompleteMe
" ----------------------------------------------------------------------------

set completeopt-=preview

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
inoremap <leader>; <C-x><C-o>

let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1


""""""""""""""""""""""""""""""
" => vimcdoc
""""""""""""""""""""""""""""""
"let g:loaded_vimcdoc = 1

""""""""""""""""""""""""""""""
" => Powerline
""""""""""""""""""""""""""""""
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

