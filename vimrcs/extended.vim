"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark

if has("gui_running")
    "colorscheme peaksea
    "colorscheme sonoma
    colorscheme molokai
    "colorscheme desert
else
    "colorscheme ir_black
    "colorscheme desert_my
    colorscheme desert
    hi Search		ctermfg=NONE ctermfg=Black ctermbg=Magenta
endif

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Menlo:h14
    set shell=/bin/bash
elseif has("win16") || has("win32")
    set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif has("linux")
    set gfn=Monospace\ 10
    set shell=/bin/bash
endif

" Open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>e :e! ~/.vim_runtime/my_configs.vim<cr>
"autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
" it deletes everything until the last slash 
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Map ½ to something useful
map ½ $
cmap ½ $
imap ½ $

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vnoremap $1 <esc>`>a)<esc>`<i(<esc>
"vnoremap $2 <esc>`>a]<esc>`<i[<esc>
"vnoremap $3 <esc>`>a}<esc>`<i{<esc>
"vnoremap $$ <esc>`>a"<esc>`<i"<esc>
"vnoremap $q <esc>`>a'<esc>`<i'<esc>
"vnoremap $e <esc>`>a"<esc>`<i"<esc>

"vnoremap <leader>1 <esc>`>a)<esc>`<i(<esc>
"vnoremap <leader>2 <esc>`>a"<esc>`<i"<esc>
"vnoremap <leader>3 <esc>`>a]<esc>`<i[<esc>
"vnoremap <leader>4 <esc>`>a}<esc>`<i{<esc>
"vnoremap <leader>q <esc>`>a'<esc>`<i'<esc>

vnoremap <m-1> <esc>`>a)<esc>`<i(<esc>
vnoremap <m-2> <esc>`>a"<esc>`<i"<esc>
vnoremap <m-3> <esc>`>a]<esc>`<i[<esc>
vnoremap <m-4> <esc>`>a}<esc>`<i{<esc>
vnoremap <m-w> <esc>`>a'<esc>`<i'<esc>

" Map auto complete of (, ", ', [
"inoremap $1 ()<esc>i
"inoremap $2 []<esc>i
"inoremap $3 {}<esc>i
"inoremap $4 {<esc>o}<esc>O
"inoremap $q ''<esc>i
"inoremap $e ""<esc>i
"inoremap $t <><esc>i

"inoremap <leader>1 ()<esc>i
"inoremap <leader>1; ();<esc>hi
"inoremap <leader>2 ""<esc>i
"inoremap <leader>2; "";<esc>hi
"inoremap <leader>3 []<esc>i
"inoremap <leader>3; [];<esc>hi
"inoremap <leader>4 {}<esc>i
"inoremap <leader>4; {};<esc>hi
"inoremap <leader>5 {<esc>o}<esc>O
"inoremap <leader>5, {<esc>o},<esc>O
"inoremap <leader>5; {<esc>o};<esc>O
"inoremap <leader>a ''<esc>i
"inoremap <leader>z <><esc>i

inoremap <m-1> ()<esc>i
inoremap <m-1><m-;> ();<esc>hi
inoremap <m-2> ""<esc>i
inoremap <m-2><m-,> "",<esc>hi
inoremap <m-2><m-;> "";<esc>hi
inoremap <m-3> []<esc>i
inoremap <m-3><m-;> [];<esc>hi
inoremap <m-4> {}<esc>i
inoremap <m-4><m-,> {},<esc>hi
inoremap <m-4><m-;> {};<esc>hi
inoremap <m-q> {<esc>o}<esc>O
inoremap <m-q><m-,> {<esc>o},<esc>O
inoremap <m-q><m-;> {<esc>o};<esc>O
inoremap <m-a> ''<esc>i
inoremap <m-z> <><esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! DeleteTillSlash()
    let g:cmd = getcmdline()

    if has("win16") || has("win32")
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
    else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    endif

    if g:cmd == g:cmd_edited
        if has("win16") || has("win32")
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
        else
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
        endif
    endif   

    return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Tagbar configuration
" => For gotags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

