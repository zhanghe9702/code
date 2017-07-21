set shiftwidth=4
set tabstop=4
set softtabstop=4
set tags+=~/.vim/systags
let g:ctrlsf_extra_backend_args = {
  \ 'ack': '--ackrc=/home/zhanghe/WMG_16B/ackrc.txt'
  \ }
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set tags+=./tags
