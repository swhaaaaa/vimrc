""""""""""""""""""""""""""""""
" => Normal section
""""""""""""""""""""""""""""""
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab

""""""""""""""""""""""""""""""
" => Makefile section
""""""""""""""""""""""""""""""
autocmd FileType make setlocal noexpandtab

""""""""""""""""""""""""""""""
" => C/C++ section
""""""""""""""""""""""""""""""
"autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab
"autocmd BufEnter *.c set ai cindent sw=4 ts=4 smarttab expandtab formatoptions=croql
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufEnter *.c set ai cindent sw=4 ts=4 smarttab noexpandtab formatoptions=croql


""""""""""""""""""""""""""""""
" => Ruby section
""""""""""""""""""""""""""""""
autocmd FileType ruby,rb set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufEnter *.rb set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent
autocmd BufRead *.rb nmap <leader>b :w !ruby %<CR>

"if !exists( "*EndToken" )
  "function EndToken()
    "let current_line = getline( '.' )
    "let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    "if match( current_line, braces_at_end ) >= 0
      "return '}'
    "else
      "return 'end'
    "endif
  "endfunction
"endif

"au FileType ruby imap <S-CR> <ESC>:execute 'normal o' . EndToken()<CR>O

if !exists( "*RubyEndToken" )

  function RubyEndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
      let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'

      if match(current_line, braces_at_end) >= 0
        return "\<CR>}\<C-O>O"
      elseif match(current_line, stuff_without_do) >= 0
        return "\<CR>end\<C-O>O"
      elseif match(current_line, with_do) >= 0
        return "\<CR>end\<C-O>O"
      else
        return "\<CR>"
      endif
    endfunction

endif

au FileType ruby imap <buffer> <CR> <C-R>=RubyEndToken()<CR>

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python,py set noexpandtab
autocmd BufEnter *.py set ai sw=4 ts=4 smarttab noexpandtab formatoptions=croql
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix encoding=utf-8
autocmd BufRead *.py nmap <leader>b :w !python %<CR>
autocmd BufEnter *.py :Sleuth
autocmd FileType python,py let b:easytags_auto_highlight = 0
autocmd FileType python,py set listchars=eol:↵,tab:»·,trail:╳,extends:»,precedes:« list

let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

""""""""""""""""""""""""""""""
" => Perl6 section
""""""""""""""""""""""""""""""
autocmd FileType perl6,p6,pm set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufEnter *.p6 set expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent
autocmd BufRead *.p6 nmap <leader>b :w !perl6 %<CR>


