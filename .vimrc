set lines=80
set columns=160
set tabstop=4
set ts=4
set shiftwidth=4
set number

map :g<CR> :make deploy<CR>
map <D-1> :w<CR>:cd ~<CR>:make deploy<CR>
map! <D-1> <ESC>:w<CR>:cd ~<CR>:make deploy<CR>

