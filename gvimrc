"" Color sheme 
""colorscheme desert
colorscheme herald



set background=dark
"" numbers rows 
set nu

"" Enable automatic indenting
set autoindent

"" Syntax highlighting.
syntax on

"" Size tabs. 
set tabstop=4 shiftwidth=4 expandtab

"" Allows you to remove tab characters as tab characters (but actually removes n spaces)
set softtabstop=4

"" Automatic switching of the working folder
set autochdir

"" Enable mojo higlight.
let mojo_highlight_data = 1

"" Save all the parameters in the session editor.
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

"" enable perl support 
filetype plugin on

"" Avtodobavlenie by Ctrl + Space
inoremap <C-space> <C-n>

"" window size on startup
set lines=100
set columns=150 

"" Highlighting the current line
set cursorline

"" list all the available options at once, and then bust
set wildmode=list:longest,full

"" The status bar.
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

"" Turn off mouse support when running in terminal
set mouse=a
set mousemodel=popup


"" Show the status bar is always
set laststatus=2

"" Options Auto additions.
" set completeopt=menu
set completeopt=longest,menuone

"" Turn on the 'smart' automatic indenting
set smartindent

"" Turn on the display the currently executing command in the lower right corner of the screen
set showcmd

"" The size of the history to undo edits
set undolevels=10000

"" Offer auto-completion on the basis of already entered the register
set infercase

"" Word Wrap on words, not letter by letter
set linebreak

"" Show line with the position of the cursor
set ruler
set cursorline
set cursorcolumn


"" Display the first brace after entering the second
set showmatch

"" Show a buffer name in the title of the terminal
set title

"" now compatible vi 
set nocompatible
"" Use dialogs instead of error messages
set confirm

let c_syntax_for_h=""

inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap { {}<LEFT> 

function! BufNewFile_PY()
0put = '#!/usr/bin/env python'
1put = '#-*- coding: utf-8 -*-'
$put =
normal G
endfunction
 
autocmd BufNewFile *.py call BufNewFile_PY()
autocmd BufNewFile *.pyw call BufNewFile_PY()


function! BufNewFile_PL()
0put = '#!/usr/bin/env perl'
1put = 'use strict;'
2put = 'use warnings::register;'
3put = '=head'
4put = ' '
5put = '=cut'
6put = ' '
$put =
normal G
endfunction
  
autocmd BufNewFile *.pl call BufNewFile_PL()
autocmd BufNewFile *.cgi call BufNewFile_PL()



function! BufNewFile_RB()
0put = '#!/usr/bin/env ruby'
1put = '# coding: utf-8'
2put = ' '
$put =
normal G
endfunction
 
autocmd BufNewFile *.rb call BufNewFile_RB()
autocmd BufNewFile *.pyw call BufNewFile_PY()


map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
""map . /

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map , ?

cmap цй wq
