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
"Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plugin 'scrooloose/syntastic'
Plugin 'dyng/ctrlsf.vim'
Plugin 'klen/python-mode' 
"Plugin 'WolfgangMehner/vim-plugins' 
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'
"Plugin 'easymotion/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'haya14busa/vim-easyoperator-phrase'
"Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'simeji/winresizer'
"Plugin 'dsimidzija/vim-nerdtree-ignore'
Plugin 'rdnetto/YCM-Generator' 
Plugin 'jeaye/color_coded'
"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" powerline setting
set laststatus=2   " Always show the statusline
" miscellancouS
"
let mapleader = ","
set fileencodings=utf-8,chinese,latin-1
"set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
"set termencoding=gbk
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
set bs=eol,start,indent
" matchit
"runtime macros/matchit.vim
" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_lazy_update = 1
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*' " MacOSX/Linux
let g:ctrlp_mruf_relative = 1
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:25,results:20'
"let g:ctrlp_by_filename = 1
"let g:ctrlp_regexp = 1
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/templates/*,*.o,*.gcda,*.d,*.gcno " MacOSX/Linux

let g:ctrlp_custom_ignore = {
 \  'dir':  '\v[\/]\.(git|hg|svn)$',
 \  'file': '\v\.(exe|so|dll|o|d|gcov|gcno|gcda)$',
 \  'link': 'some_bad_symbolic_links' 
 \ }
   
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_extensions = ['tag']
"let g:ctrlp_user_command = 'ag %s -type f'        " MacOSX/Linuxnnoremap <Leader>fu :CtrlPFunky<Cr>
"nnoremap <Leader>fu :CtrlPFunky<Cr>
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"Tab configuration
"map <leader>tn :tabnew<cr>
"map <leader>tp :tabprevious<cr>
"map <leader>tn :tabNext<cr>
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"Smart way to move btw. windows
"let g:Vim_Ctrl_j = 'off'
"let g:C_Ctrl_j = 'off'
"let g:Perl_Ctrl_j = 'off'
"let g:Awk_Ctrl_j = 'off'
"let g:BASH_Ctrl_j = 'off'
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" NerdTree {
if isdirectory(expand("~/.vim/bundle/nerdtree"))
"map <leader>ne <plug>:NERDTreeTabsToggle<CR>
map <F2> :NERDTreeFind<CR>
map <F3> :NERDTreeToggle<CR>
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
map <silent> <leader>sw :source workspace.vim<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 
autocmd! bufwritepost workspace.vim source workspace.vim 

" Function key mapping

nnoremap <F6> :GundoToggle<CR>
map <F7> :set nohls!<CR>:set nohls?<CR>
"nmap <F7> :TagbarTogglePause<CR>
nmap <F8> :TagbarToggle<CR>
map <F9> :set nonu!<CR>:set nonu?<CR>
map <F10> :set nolist!<CR>:set nolist?<CR>
map <F11> :set paste!<CR>:set nopaste?<CR>
 "easy-motioning
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
"vim-easyoperator-line

"omap <Leader>l  <Plug>(easyoperator-line-select)
"xmap <Leader>l  <Plug>(easyoperator-line-select)
"nmap d<Leader>l <Plug>(easyoperator-line-delete)
"nmap c<Leader>l <Plug>(easyoperator-line-yank)
""vim-easyoperator-phrase
"omap <Leader>p  <Plug>(easyoperator-phrase-select)
"xmap <Leader>p  <Plug>(easyoperator-phrase-select)
"nmap d<Leader>p <Plug>(easyoperator-phrase-delete)
"nmap c<Leader>p <Plug>(easyoperator-phrase-yank)
"for syntatic
"let g:pymode_python='python3'
let g:pymode_rope_autoimport=1
let g:pymode_lint_cwindow=0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Youcompleteme
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" multi cursor
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
"let g:multi_cursor_insert_maps={'<BS>':1}

nnoremap <silent> <leader>mf :MultipleCursorsFind <C-R><C-W>
vnoremap <silent> <leader>mf :MultipleCursorsFind <C-R><C-W>

" ctrlsf settings

"let g:ctrlsf_ackprg= '/usr/bin/ag'
let g:ctrlsf_case_sensitive = 'yes'
let g:ctrlsf_default_root = 'project+fw'
let g:ctrlsf_context = '-B 5 -C 3'
" m4
inoremap <C-L> <C-X><C-L>
"let g:m4_default_quote="`,'" 
"let g:m4_default_comment='#' 
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" vim-sneak
let g:sneak#label = 1
nmap s <Plug>SneakLabel_s
nmap S <Plug>SneakLabel_S
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
"ultisnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
"let g:ycm_semantic_triggers =  {
  "\   'c' : ['->', '.','re![_a-zA-z0-9]'],
  "\   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  "\             're!\[.*\]\s'],
  "\   'ocaml' : ['.', '#'],
  "\   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  "\   'perl' : ['->'],
  "\   'php' : ['->', '::'],
  "\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  "\   'ruby' : ['.', '::'],
  "\   'lua' : ['.', ':'],
  "\   'erlang' : [':'],
  "\ }
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_exit_from_visual_mode = 0
"multiple-cursors && YCM"
"called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  let s:old_ycm_whitelist = g:ycm_filetype_whitelist
  let g:ycm_filetype_whitelist = {}
endfunction

function! Multiple_cursors_after()
  let g:ycm_filetype_whitelist = s:old_ycm_whitelist
endfunction
"au FileType qf call AdjustWindowHeight(1, 4)
"function! AdjustWindowHeight(minheight, maxheight)
  "exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
"endfunction
