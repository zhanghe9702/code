set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dyng/ctrlsf.vim'
Plugin 'klen/python-mode' 
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'haya14busa/vim-easyoperator-phrase'
Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'rdnetto/YCM-Generator' 
Plugin 'jeaye/color_coded'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" powerline setting
set laststatus=2   " Always show the statusline
" miscellancouS
let mapleader = ","
set fileencodings=utf-8,chinese,latin-1
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set termencoding=gbk
set fileencoding=utf-8
set encoding=utf-8
syntax enable
set background=light
colorscheme darkblue
set showcmd
set helplang=en
set history=50
set number
set ruler
set nowrap
set noic
set expandtab
set nowrapscan
" matchit
runtime macros/matchit.vim
" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_by_filename = 1
"let g:ctrlp_regexp = 1
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/templates/*,*.o,*.gcda,*.d,*.gcno " MacOSX/Linux

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
 \  'dir':  '\v[\/]\.(git|hg|svn)$',
 \  'file': '\v\.(exe|so|dll|o|d|gcov|gcno|gcda)$',
 \  'link': 'some_bad_symbolic_links' 
 \ }
   
"let g:ctrlp_user_command = 'ag %s -type f'        " MacOSX/Linuxnnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
"nnoremap <Leader>fu :CtrlPFunky<Cr>
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:tagbar_autoclose = 1
"Tab configuration
"map <leader>tn :tabnew<cr>
map <leader>tp :tabprevious<cr>
map <leader>tn :tabNext<cr>
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"Smart way to move btw. windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
"" Fo<leader>r TagList
"let Tlist_Show_One_File=1  
"let Tlist_Exit_OnlyWindow=1  

" BufExplorer
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber

""""""""""""""""""""""""""""""
"winManager setting
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" NerdTree {
if isdirectory(expand("~/.vim/bundle/nerdtree"))
map <leader>ne <plug>:NERDTreeTabsToggle<CR>
"map <leader>e :NERDTreeFind<CR>
map <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
endif
    " }
""""""""""""""""""""""""""""""

" execute project related configuration in current directory
if filereadable("workspace.vim")
    source workspace.vim
endif 
"Fast reloading of the .vimrc
"map <silent> <leader>ss :source ~/.vimrc<cr>
"map <silent> <leader>sw :source workspace.vim<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

" Function key mapping

map <F2> :NERDTreeToggle<CR>
map <F9> :set nonu!<CR>:set nonu?<CR>
map <F10> :set nolist!<CR>:set nolist?<CR>
map <F11> :set paste!<CR>:set nopaste?<CR>
map <F6> :set nohls!<CR>:set nohls?<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F7> :TagbarTogglePause<CR>
 "easy-motioning
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
"vim-easyoperator-line

omap <Leader>l  <Plug>(easyoperator-line-select)
xmap <Leader>l  <Plug>(easyoperator-line-select)
nmap d<Leader>l <Plug>(easyoperator-line-delete)
nmap c<Leader>l <Plug>(easyoperator-line-yank)
"vim-easyoperator-phrase
omap <Leader>p  <Plug>(easyoperator-phrase-select)
xmap <Leader>p  <Plug>(easyoperator-phrase-select)
nmap d<Leader>p <Plug>(easyoperator-phrase-delete)
nmap c<Leader>p <Plug>(easyoperator-phrase-yank)
"for syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"tabularize
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
" Youcompleteme
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" multi cursor
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
nnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>

" ctrlsf settings

let g:ctrlsf_default_root = 'project+fw'
" m4
let g:m4_default_quote="`,'" 
let g:m4_default_comment='#' 
"vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nmap     <C-F>f <Plug>CtrlSFCCwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap     <C-F>l <Plug>CtrlSFQuickfixPrompt
vmap     <C-F>l <Plug>CtrlSFQuickfixVwordPath
"vmap     <C-F>L <Plug>CtrlSFQuickfixVwordExec

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }


"multiple-cursors && YCM"
"called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  let s:old_ycm_whitelist = g:ycm_filetype_whitelist
  let g:ycm_filetype_whitelist = {}
endfunction

function! Multiple_cursors_after()
  let g:ycm_filetype_whitelist = s:old_ycm_whitelist
endfunction
au FileType qf call AdjustWindowHeight(1, 4)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
