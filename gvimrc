"{{{ Main seting

" numbers rows
set nu

" Enable automatic indenting
set autoindent
set completeopt=menu

" Syntax highlighting.
syntax on

" Size tabs.
set tabstop=3 shiftwidth=3 expandtab
set smarttab

" Allows you to remove tab characters as tab characters (but actually removes n spaces)
set softtabstop=3

" Automatic switching of the working folder
set autochdir

" enable file type support
filetype on
filetype plugin on
filetype indent on

" Show line with the position of the cursor
set ruler
set cursorline
set cursorcolumn

" list all the available options at once, and then bust
set wildmode=list:longest,full

" Turn off mouse support when running in terminal
set mouse=a
set mousemodel=popup

" Options Auto additions.
set completeopt=longest,menuone

" Turn on the 'smart' automatic indenting
set smartindent

" Turn on the display the currently executing command in the lower right corner of the screen
set showcmd

" The size of the history to undo edits
set undolevels=10000

" history cmd line
set history=50

" wrap line 80 column

if exists('+colorcolumn')
  set colorcolumn=80
else
  :au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1 )
endif
highlight LineNr ctermfg=darkgray
set background=dark

"""" use [RO] for [readonly] to save space in the message line:
 set shortmess+=r

" Show the status bar is always
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ \ \ enc:%{&enc}\ format:%{&ff}\ file:%{&fenc}%=(\ ch:%3b\ hex:%2B\ )\ col:%2c\ line:%2l/%L\ [%2p%%]

"" Offer auto-completion on the basis of already entered the register
set infercase

" Word Wrap on words, not letter by letter
set linebreak

" Display the first brace after entering the second
set showmatch

" Show a buffer name in the title of the terminal
set title

" now compatible vi
set nocompatible

" Use dialogs instead of error messages
set confirm

"{{ Autoclose
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
"inoremap { {}<LEFT>
"{ плохо работает когда работае верхнее правлило с закрывающей ковычкой
"= is for reformatting normal paragraphs.
"+ is for reformatting paragraphs in quoted emails.
map = }{!}fmt^M}
map + }{!}fmt -p '> '^M}
"}
"}}

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


" window size on startup and color cheme

if has( "GUI" )
    set lines=90
    set columns=150
    colorscheme herald
    "colorscheme eclm_wombat
    "colorscheme freya
    ""colorscheme kellys

    " show tabs line always.
    set showtabline=2
   "{{{ Меню для переключения кодировки.
   set wildmenu
   set wcm=<Tab>
   menu Encoding.koi8-r       :set enc=koi8-r<CR>     :e ++enc=koi8-r ++ff=unix<CR>
   menu Encoding.windows-1251 :set enc=cp1251<CR>     :e ++enc=cp1251 ++ff=dos<CR>
   menu Encoding.cp866        :set enc=8bit-cp866<CR> :e ++enc=cp866  ++ff=dos<CR>
   menu Encoding.utf-8        :set enc=utf8<CR>       :e ++enc=utf8 <CR>
   menu Encoding.koi8-u       :set enc=koi8-u<CR>     :e ++enc=koi8-u ++ff=unix<CR>
   map <F10> :emenu Encoding.<TAB>


   set guioptions+=e " включаем none-gui табы
   set guioptions-=r " отключаем правый scrollbar
   set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
   set guioptions-=b " отключаем нижний scrollbar
   set guioptions-=l " отключаем левый scrollbar
   set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
   " set guioptions-=T " отключаем панель инструментов
   " set guioptions-=m " отключаем меню

   " Cool tab completion stuff
   set wildmenu
   set wildmode=list:longest,full




else
    colorscheme darkblue
endif

" \x0D
set list listchars=tab:\ \ ,eol:¬

" for perl file set compiler perl
autocmd! BufEnter,BufNewFile,BufRead *.pl compiler perl


"{{ Search

" Включаем подсветку при поиске.
set hlsearch

" Инкриментный поиск, при поиске сразу выделяем найденое не ждём нажатия Enter для поиска
set incsearch

" Убираем подсветку после поиска по нажатию на ESC
nnoremap <esc> :noh<return><esc>

"}}

" Folding Stuffs
set foldenable " enable folding
set foldmethod=syntax " Define blocks based on the syntax file
set foldcolumn=3 " Show Folding.
set foldlevel=1 " The first level of nesting is open, the other closed
let perl_folding=1 " fix perl folding
set foldopen=all " automatic opening when approaching

" Avtodobavlenie by Ctrl + Space
inoremap <C-space> <C-n>

"{ copypaste comfortable keys.
" <C-Insert>  Копировать в буфер обмена иксов Ctrl-Insert
vmap <C-Insert> "+y
" <Shift-Insert> Вставить из буфера обмена иксов Shift-Insert
vmap <S-Insert> "+p
nmap <S-Insert> "+p
imap <S-Insert> <Esc>"+pi
"}


"}}}


"{{{ Session module

" Save all the parameters in the session editor.
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
" taglist plugins

"}}}



"{{{ NERDTree plugins
" NERDtree is a right
let g:NERDTreeWinPos = "right"
let g:NERDTreeTabsToggle = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_focus_on_files = 0

"" Open NERDTree in <F-9> key
nmap <silent> <F9> :NERDTreeToggle<CR>
"}}}

"{{{ Mojolicious Plugins
" Enable mojo higlight.
let mojo_highlight_data = 1
"}}}




""set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)

"{{{ Configure Tlist plugin
let Tlist_Auto_Update = 0
let Tlist_Auto_Open = 1
let Tlist_Show_Menu = 1
let Tlist_Use_Right_Window = 1

let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0

nnoremap <silent> <F8> :TlistToggle<CR>
"}}}

"{{{ Plugin PowerLine

let g:Powerline_symbols = 'fancy'

"}}}




"{{{
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

"{{{ need  apt-get install wmctrl

function ToggleFullScreen()
    if &go =~ 'e'
        exec('silent !wmctrl -r :ACTIVE: -b add,fullscreen')
        exec('set go-=e')
    else
        exec('silent !wmctrl -r :ACTIVE: -b remove,fullscreen')
        exec('set go+=e')
    endif
endfunction

nnoremap <F11> :call ToggleFullScreen()<CR>
inoremap <F11> :call ToggleFullScreen()<CR>



"}}}


"   ""{{{ название табов к удобному виду
"   "function MyTabLine()
"   "  let s = ''
"   "  for i in range(tabpagenr('$'))
"   "    " select the highlighting
"   "    if i + 1 == tabpagenr()
"   "      let s .= '%#TabLineSel#'
"   "    else
"   "      let s .= '%#TabLine#'
"   "    endif
"   "
"   "" set the tab page number (for mouse clicks)
"   "    let s .= '%' . (i + 1) . 'T'
"   "
"   "" the label is made by MyTabLabel()
"   "    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
"   "  endfor
"   "
"   "" after the last tab fill with TabLineFill and reset tab page nr
"   "  let s .= '%#TabLineFill#%T'
"   "
"   "" right-align the label to close the current tab page
"   "  if tabpagenr('$') > 1
"   "    let s .= '%=%#TabLine#%999Xclose'
"   "  endif
"   "
"   "return s
"   "endfunction
"   "
"   "function MyTabLabel(n)
"   "    let buflist = tabpagebuflist(a:n)
"   "    let winnr = tabpagewinnr(a:n)
"   "    let label = fnamemodify(bufname(buflist[winnr - 1]), ':t')
"   "
"   "if label == ''
"   "        if &buftype == 'quickfix'
"   "          let label = '[Quickfix List]'
"   "        else
"   "          let label = 'NoName'
"   "        endif
"   "    endif
"   "
"   "if getbufvar(buflist[winnr - 1], "&modified")
"   "        let label = "+".label
"   "    endif
"   "
"   "let label = a:n.":".label
"   "
"   "return label
"   "endfunction
"   "
"   "set tabline=%!MyTabLine()
"   "
"   """}}}


"{{{ Настройки русской раскладки.



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

"}}}

