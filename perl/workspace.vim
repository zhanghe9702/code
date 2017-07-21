set shiftwidth=4
set tabstop=4
set softtabstop=4
set tags+=~/.vim/systags
let g:ctrlsf_extra_backend_args = {
  \ 'ack': '--ackrc=/home/zhanghe/WMG_16B/ackrc.txt'
  \ }

function! UpdateCtags()
    silent call UpdateCode()
    execute '!' . 'ctags -I __THROW -I __attribute_pure__  -I __nonnull -I __attribute__  --file-scope=yes --langmap=c:+.h  --languages=c,c++,java --links=yes --c-kinds=+px --c++-kinds=+px --fields=+iaS --extra=+q  --exclude=build --exclude=3rd-party -R -f /home/zhanghe/WMG_16B/tags'
endfunction
function! UpdateCode()
    cd /home/zhanghe/WMG_16B/
    execute '!' . 'svn up' 
endfunction
nmap <leader>ut :call UpdateCtags()<CR><CR>
set tags+=./tags
let &makeprg="cd /home/zhanghe/WMG_16B/config;make V=0 CONFILE=CONFIG_WMG_SSRSIM MYVER=ver1 MYINFO=ver1 all" 
"let &makeprg="cd\ /home/zhanghe/WMG_16B/config;make"
set path+=/home/zhanghe/WMG_16B/**4/src
