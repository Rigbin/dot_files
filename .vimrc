syntax on
set number
set relativenumber
set encoding=utf8
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoread
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set nocp
set backspace=indent,eol,start

"different indention for python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"whitespace settings
set listchars=eol:$,tab:>-,space:.,trail:~,extends:>,precedes:<,nbsp:%
"F5: toggle 'list'
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

"Str-A: select all
nmap <C-a> gg0vG$
imap <C-a> <Esc>gg0vG$

"Save
nmap <C-y> :w<CR>
imap <C-y> <Esc>:w<CR>a

"Copy to Clipboard (on arch instal `gvim`, on debian/ubuntu install `vim-gtk` or `vim-gnome`)
xmap <C-c> "+y

"Paste from Clipboard
nmap <C-v> "+p
imap <C-v> <Esc>"+pa
vmap <C-v> "+p

"Remapping for 'Jump to Tag' on German Keyboard
nnoremap ü <C-]>
nnoremap Ü <C-O>

"""""""""""""""""""""""""""""""""""
"Mappings for quick Buffer Actions"
"""""""""""""""""""""""""""""""""""
" Move to the previous buffer
nnoremap gp :bp<CR> 
" Move the the next buffer
nnoremap gn :bn<CR>
" List all possible buffers
nnoremap gl :ls<CR>
" List all possible buffers an accept new buffer argument (eg to switch to buffer with #x)
nnoremap gb :ls<CR>:b

