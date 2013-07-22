""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""" Vim configurations file """""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't use vi compatibility
set nocompatible

" Enable file type support
filetype on
filetype plugin on
filetype indent on

set wildmode=list:longest,full

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" always show cursor position
set ruler


" nice copypaste
vmap <C-Insert> "+y
vmap <S-Insert> "+p
nmap <S-Insert> "+p
imap <S-Insert> <Esc>"+pi

" enabel sintax
syntax on

" smart tab's
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
set smarttab

" do not wrap lines
set nowrap

set mouse=a
set mousemodel=popup

" Enable automatic indenting
set autoindent

" Turn on the 'smart' automatic indenting
set smartindent
" It only works when the gui

if has("gui_running")

  " show numbers
  set nu

  " Default with and height vim windows
  set lines=41
  set columns=169

  " color cheme
  colorscheme herald

  " set dark background
  set background=dark

  " select gorizontal cursor line
  set cursorline

  " select vertical cursor line
  set cursorcolumn

  " Включаем подсветку при поиске.
  set hlsearch

  " Инкриментный поиск, при поиске сразу выделяем найденое не ждём нажатия Enter для поиска
  set incsearch

  " Убираем подсветку после поиска по нажатию на ESC
  nnoremap <esc> :noh<return><esc>

  if exists('+colorcolumn')
    set colorcolumn=120
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%120v.\+/
  else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
  endif


  " remove startup text
   set shortmess+=tToOI
   set guioptions+=e " включаем none-gui табы
   set guioptions-=r " отключаем правый scrollbar
   set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
   set guioptions-=b " отключаем нижний scrollbar
   set guioptions-=l " отключаем левый scrollbar
   set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
   set guioptions-=T " отключаем панель инструментов
   set guioptions-=m " отключаем меню

   function! ToggleGUICruft()
      if &guioptions=='i'
        exec('set guioptions=imTrL')
      else
        exec('set guioptions=i')
    endif
  endfunction

  map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

  set t_Co=256
  set guitablabel=%M\ %t

endif


" Turn on the display the currently executing command in the lower right corner
" of the screen
set showcmd

" The size of the history to undo edits
set undolevels=10000

"centrolize cursor
set scrolloff=5

" history cmd line
set history=50

" use [RO] for [readonly] to save space in the message line:
 set shortmess+=r

" Show the status bar is always
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ \ enc:%{&enc}\ format:%{&ff}\ file:%{&fenc}\ %{fugitive#statusline()}%=\ (\ ch:%3b\ hex:%2B\ )\ col:%2c\ line:%2l/%L\ [%2p%%]

" set list listchars=tab:\ \ ,eol:¬

" sudo writeble
cmap w!! w !sudo tee % >/dev/null

" Offer auto-completion on the basis of already entered the register
set infercase

" Word Wrap on words, not letter by letter
set linebreak

" Display the first brace after entering the second
set showmatch

" Show a buffer name in the title of the terminal
set title

" Use dialogs instead of error messages
set confirm

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Autoclose
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap { {}<LEFT>

set completeopt=menuone,menu,longest,preview


" "HOT KEY"
" Moving windows
nnoremap <A-Left> <C-W>h
nnoremap <A-Right> <C-W>l
nnoremap <A-Up> <C-W>k
nnoremap <A-Down> <C-W>j

" Resizing windows
nnoremap <S-Down> <C-W>+
nnoremap <S-Up> <C-W>-
nnoremap <S-Left> <C-W><
nnoremap <S-Right> <C-W>>

nnoremap <C-left> :tabp<CR>
nnoremap <C-Right> :tabn<CR>


nnoremap <Win-Up> <C-W>s
""nnoremap <M-Right> <C-W>v
""nnoremap <C-Space> <C-W>c

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
cmap ц  w

if has("gui_running")
   set wildmenu
   set wcm=<Tab>
   menu Encoding.koi8-r :set enc=koi8-r<CR> :e ++enc=koi8-r ++ff=unix<CR>
   menu Encoding.windows-1251 :set enc=cp1251<CR> :e ++enc=cp1251 ++ff=dos<CR>
   menu Encoding.cp866 :set enc=8bit-cp866<CR> :e ++enc=cp866 ++ff=dos<CR>
   menu Encoding.utf-8 :set enc=utf8<CR> :e ++enc=utf8 <CR>
   menu Encoding.koi8-u :set enc=koi8-u<CR> :e ++enc=koi8-u ++ff=unix<CR>
   " map <S-F10> :emenu Encoding.<TAB>

   set wildmenu
   set wcm=<Tab>
   menu Set\ Spell.ru  :set spl=ru spell<CR>
   menu Set\ Spell.en  :set spl=en spell<CR>
   menu Set\ Spell.ua  :set spl=ua spell<CR>
   menu Set\ Spell.ru_en  :set spl=ru,en spell<CR>
   menu Set\ Spell.off :set nospell<CR>
   menu Set\ Spell.next ]s
   menu Set\ Spell.prev [s
   menu Set\ Spell.word\ good zg
   menu Set\ Spell.word\ wrong zw
   menu Set\ Spell.word\ ignore zG
   imap <S-F8> <Esc> z=<CR>i
   map <S-F8> z=<CR>

endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git,*.tar.gz,~*,*.tar.bz2,*.rar,*.o,*.pyc,*.hg,*/cache/*
set wildignore+=*.bz,*.iso,*.o,*.obj,*.bak,*.exe,*.gz,*.jpeg,*.png,*.jpg,*.flw,*.mp4,*.tar,*.mp3,*.pdf,*.djvu

"""""""""""""""""""""""""""""""""""""""""""""""""""""" "PLUGINS" """"""""""""""""""""""""""""""""""""""""""""""""""""""
" "pathogen"
"
execute pathogen#infect()

" "NERDtree"
"
let g:NERDTreeWinPos = "right"
let g:NERDTreeTabsToggle = 1
let g:NERDTreeIgnore=['\.pyc', '\~$','\.chm*','\.exe*', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.iso', '\.tar$','\.pdf','\.rar$','\.doc$','\.docx','\.xls$','\.xlsx', '\.djvu$', '\.tar\.gz', '\.tar\.bz2', '.tar.bz', '\.jpg$', '\.jpeg$', '\.o$','\.mp3$' ]
let g:NERDTreeStatusline = "%{ getcwd() }"
let g:NERDTreeWinSize = 20

" open a NERDTree automatically when vim starts up if no files were specified
" autocmd vimenter * if !argc() | NERDTree | endif

" close vim if the only window left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" Open NERDTree in <F-7> key
nmap <silent> <F7> :NERDTreeToggle<CR>
if has('gui_running')
" "vim-nerdtree-tabs" "
  let g:nerdtree_tabs_open_on_gui_startup = 1
endif
"  "sparkup""
"  Mapping used to execute sparkup.
let g:sparkupExecuteMapping='<C-Space>'

" "SnipMate" snipets

"omni complate (default instal)"
set omnifunc=syntaxcomplete#Complete

" remap Ctrl-x Ctrl-o to Shift-Space
inoremap <S-Space> <C-x><C-o>
inoremap <S-@> <S-Space>

" "tagbar" more info on https://github.com/majutsushi/tagbar/wiki
" requred "excuberant-ctags"
let g:tagbar_width=20
if has('gui_running')
  autocmd VimEnter * nested :TagbarOpen
endif
nmap <F8> :TagbarToggle<CR>

if &filetype == "ruby"
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }
endif

if &filetype == "css"
  let g:tagbar_type_css = {
  \ 'ctagstype' : 'Css',
      \ 'kinds'     : [
          \ 'c:classes',
          \ 's:selectors',
          \ 'i:identities'
      \ ]
  \ }
endif

" "Ctrlp.vim" https://github.com/kien/ctrlp.vim

let g:ctrlp_working_path_mode = 'ra'

"" "gitgutter" https://github.com/airblade/vim-gitgutter




"""""""""""""""""""" "Colorize status line """""""""""""""""""""""""""""""""""



" Show the status bar is always
set laststatus=2
if has('gui_running')

  set statusline=
  set statusline+=%7*\[%n]                                       "buffernr
  set statusline+=%1*\[%<%t]\                                          "File+path
  set statusline+=%2*\ %y\                                            "FileType
  set statusline+=%3*\ en:%{&enc}\ ff:%{&ff}\ file:%{&fenc}           "Encoding
  set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\                      "Encoding2
  set statusline+=%4*\ %{fugitive#statusline()}\                       "Git
  set statusline+=%5*\ %=(ch:%3b\ hex:%2B)\                         "Char in
  set statusline+=%8*\ %=row:%l/%L\ (%03p%%)\                       "Rownumber/total (%)
  set statusline+=%9*\ col:%03c\                                      "Column
  set statusline+=%0*\ \ %m%r%w\ %P\ \                                "Modified? Readonly? Top/bot.


  function! HighlightSearch()
    if &hls
      return 'H'
    else
      return ''
    endif
  endfunction

  " Colors (adapted from ligh2011.vim):
  hi User1 guifg=#ffdad8  guibg=#880c0e
  hi User2 guifg=#000000  guibg=#F4905C
  hi User3 guifg=#292b00  guibg=#f4f597
  hi User4 guifg=#112605  guibg=#aefe7B
  hi User5 guifg=#051d00  guibg=#7dcc7d
  hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
  hi User8 guifg=#ffffff  guibg=#5b7fbb
  hi User9 guifg=#ffffff  guibg=#810085
  hi User0 guifg=#ffffff  guibg=#094afe

else
  set statusline=%t%m%r%h%w\ %y\ \ enc:%{&enc}\ format:%{&ff}\ file:%{&fenc}\ %{fugitive#statusline()}%=\ (\ ch:%3b\ hex:%2B\ )\ col:%2c\ line:%2l/%L\ [%2p%%]
endif
