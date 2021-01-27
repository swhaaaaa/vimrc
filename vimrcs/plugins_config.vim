""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
"call pathogen#infect('~/.vim_runtime/plugged/{}')
call pathogen#infect('~/.vim_runtime/plugged_forked/{}')
"call pathogen#helptags()


" ----------------------------------------------------------------------------
" YouCompleteMe
" ----------------------------------------------------------------------------

"set completeopt-=preview

"nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
"inoremap <leader>; <C-x><C-o>

"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_identifiers_from_tags_files=0
"let g:ycm_min_num_of_chars_for_completion=1
"let g:ycm_cache_omnifunc=0
"let g:ycm_seed_identifiers_with_syntax=1


""""""""""""""""""""""""""""""
" => Powerline
""""""""""""""""""""""""""""""
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
"let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
" NERDTree Menu		type 'm'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let NERDTreeIgnore=[]
let NERDTreeIgnore=['\.ko$', '\.mod.c$', '\~$']
"let NERDTreeIgnore=['\.o$', '\.ko$', '\.mod.c$', '\~$']
let NERDTreeShowHidden=1
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
"au VimEnter *  NERDTree


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif

"disable
"let g:yankring_replace_n_pkey = ''
"let g:yankring_replace_n_nkey = ''

map <leader>yr :YRShow<cr>


""""""""""""""""""""""""""""""
" => Tagbar setting
""""""""""""""""""""""""""""""
let g:tagbar_width = 40
let g:tagbar_expand = 1
"let g:tagbar_left = 1
"let g:tagbar_autoshowtag = 1
let g:tagbar_ctags_bin = 'ctags'
nmap <silent> <Leader>bb :TagbarToggle<cr>
"au VimEnter *  TagbarOpen


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Include_Files = '\.c$\|\.h$|\.cpp$\|\.hpp$|\.wiki$'
let MRU_Max_Entries = 400
map <leader>mru :MRU<CR>


""""""""""""""""""""""""""""""
" => grep.vim
""""""""""""""""""""""""""""""
"let Grep_Default_Filelist = '*.[chS]'
let Grep_Default_Filelist = '*.c *.h *.cpp *.hpp *.py *.asm *.S'
let Grep_Default_Options = '-i'
let Grep_Skip_Dirs = '.git .hg .svn'
let Grep_Skip_Files = '*.bak *~ *.o *.ko *.mod.c'
"let Grep_OpenQuickfixWindow = 0
"let Grep_Find_Use_Xargs = 0


""""""""""""""""""""""""""""""
" => Ack
" 1. curl http://betterthangrep.com/ack-standalone > ~/bin/ack && chmod 0755
" 2. sudo apt-get install ack-grep 
""""""""""""""""""""""""""""""
"let g:ackprg="ack\\ -H\\ --nocolor\\ --nogroup\\ --column\\ -a"
"let g:ackprg="ack\\ -H\\ --nocolor\\ --nogroup\\ --column"
"let g:ackhighlight=1

"-i, --ignore-case     Ignore case distinctions in PATTERN
let g:ackprg="ack -H --nocolor --nogroup --column -i"

nmap <leader>ak :Ack! <C-R>=expand("<cword>")<CR>
vmap <leader>ak y:Ack! "<C-R>0"
map <leader>akk :Ack! "" <left><left>


""""""""""""""""""""""""""""""
" => the_silver_searcher ag.vim
" 1. sudo apt install silversearcher-ag
""""""""""""""""""""""""""""""
let g:ag_prg="ag --vimgrep --smart-case"
" let g:ag_working_path_mode='r'
let g:ag_highlight=1
" let g:ag_format="%f:%l:%m"

nmap <leader>ag :Ag! <C-R>=expand("<cword>")<CR>
vmap <leader>ag y:Ag! "<C-R>0"
map <leader>agg :Ag! "" <left><left>

nmap <leader>agb :AgBuffer! <C-R>=expand("<cword>")<CR>
vmap <leader>agb y:AgBuffer! "<C-R>0"
map <leader>agbb :AgBuffer! "" <left><left>


""""""""""""""""""""""""""""""
" => UltiSnips
""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab><tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]


""""""""""""""""""""""""""""""
" => super tab
""""""""""""""""""""""""""""""
let g:SuperTabPluginLoaded=1 " Avoid load SuperTab Plugin
let g:SuperTabDefaultCompletionType='context'
let g:SuperTabContextDefaultCompletionType='<c-p>'
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery =
" \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

""""""""""""""""""""""""""""""
" => Tagbar setting
""""""""""""""""""""""""""""""
let g:tagbar_width = 40
let g:tagbar_expand = 1
"let g:tagbar_left = 1
"let g:tagbar_autoshowtag = 1
let g:tagbar_ctags_bin = 'ctags'
nmap <silent> <Leader>bb :TagbarToggle<cr>
"au VimEnter *  TagbarOpen

""""""""""""""""""""""""""""""
" => omnicppcomplete
""""""""""""""""""""""""""""""
set completeopt=longest,menu
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_NamespaceSearch = 1
let OmniCpp_DefaultNamespace=["std"]
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem = 2


""""""""""""""""""""""""""""""
" => fzf.vim
" https://github.com/junegunn/fzf
" https://github.com/junegunn/fzf.vim#installation
""""""""""""""""""""""""""""""
nmap <C-F>   :Files<CR>
nmap <C-F><C-F>   :Files
nmap <C-B> :Buffers<CR>
let g:fzf_action = { 'ctrl-b': 'edit' }

""""""""""""""""""""""""""""""
" => Vim-Ruby
""""""""""""""""""""""""""""""
let g:ruby_indent_access_modifier_style = 'indent'

""""""""""""""""""""""""""""""
" => Vim-GO
""""""""""""""""""""""""""""""
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"

""""""""""""""""""""""""""""""
" => fidian/hexmode 
""""""""""""""""""""""""""""""
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
let g:hexmode_patterns = '*.bin,*.exe,*.dat,*.o'
let g:hexmode_autodetect = 1
let g:hexmode_xxd_options = '-g 1'


""""""""""""""""""""""""""""""
" => cscope.vim
""""""""""""""""""""""""""""""


