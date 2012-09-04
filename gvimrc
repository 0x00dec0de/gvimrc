""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""" Vim configurations file """""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" now compatible vi must be first line
set nocompatible

" Устанавливаем расстояние в 80 столбцов для более удобного формирования
" синтаксиса при программировании.

fu! ForProgramming()
   if exists('+colorcolumn')
     set colorcolumn=80
   else
     au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
   endif
endfu

set novisualbell
set t_vb=


if has("gui_running")

   call ForProgramming()

   " По умолчанию при тёмный фон
   set background=dark

   " Размеры окна по умолчанию при открытии vim
   set lines=90
   set columns=150

   " Цветовая схема
      colorscheme herald

   " Отображаем нумерацию строк.
   set nu

   " Всегда отображаем позицию положения курсора.
   set ruler

   " Выделяем сначала горизонтальную линию положения курсора потом
   " вертикальную
   set cursorline
   set cursorcolumn

" remove startup text
   set shortmess+=tToOI
   set guioptions+=e " включаем none-gui табы
   set guioptions-=r " отключаем правый scrollbar
   set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
   set guioptions-=b " отключаем нижний scrollbar
   set guioptions-=l " отключаем левый scrollbar
   set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
   set guioptions-=T " отключаем панель инструментов
"   set guioptions-=m " отключаем меню

   " Удобное копирование клавишами в буфер иков.
   " <C-Insert> Копировать в буфер обмена иксов Ctrl-Insert
   vmap <C-Insert> "+y
   " <Shift-Insert> Вставить из буфера обмена иксов Shift-Insert
   vmap <S-Insert> "+p
   nmap <S-Insert> "+p
   imap <S-Insert> <Esc>"+pi

endif


" Включаем подсветку синтаксиса.
syntax on

" Настраеваем отступы табуляции, замена табуляции пробелами и умные отступы.
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
set smarttab


" Не переносить строки в конце экрана редактора
set nowrap

" for python
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Автомитически меняем рабочую  дирикторию
set autochdir

" Enable file type support
filetype on
filetype plugin on
filetype indent on

" list all the available options at once, and then bust
set wildmode=list:longest,full

" Turn off mouse support when running in terminal
"set mouse=a
set mousemodel=popup

" Options Auto additions.
set completeopt=longest,menuone

" Enable automatic indenting
set autoindent

" Turn on the 'smart' automatic indenting
set smartindent

" Turn on the display the currently executing command in the lower right corner
" of the screen
set showcmd

" The size of the history to undo edits
set undolevels=10000
"centrolize cursor
set scrolloff=10

" history cmd line
set history=50

" use [RO] for [readonly] to save space in the message line:
 set shortmess+=r

" Show the status bar is always
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ \ enc:%{&enc}\ format:%{&ff}\ file:%{&fenc}%=(\ ch:%3b\ hex:%2B\ )\ col:%2c\ line:%2l/%L\ [%2p%%]

set list listchars=tab:\ \ ,eol:¬

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
   menu Exec.GForth  :!gforth % <CR>
   menu Exec.Perl    :!perl % <CR>
   menu Exec.Python  :!python % <CR>
   menu Exec.Ruby    :!ruby % <CR>
   menu Exec.bash      :!/bin/bash<CR>
   menu Exec.xterm     :sh<CR>
"  map <S-F9> :emenu Exec.<Tab>

   set wildmenu
   set wcm=<Tab>
   menu SetSpell.ru  :set spl=ru spell<CR>
   menu SetSpell.en  :set spl=en spell<CR>
   menu SetSpell.ua  :set spl=ua spell<CR>
   menu SetSpell.ru_en  :set spl=ru,en spell<CR>
   menu SetSpell.off :set nospell<CR>
   menu SetSpell.next ]s
   menu SetSpell.prev [s
   menu SetSpell.word_good zg
   menu SetSpell.word_wrong zw
   menu SetSpell.word_ignore zG
"  map <S-F7> :emenu SetSpell.<Tab>
   imap <S-F8> <Esc> z=<CR>i
   map <S-F8> z=<CR>

   set wildmenu
   set wcm=<Tab>
   menu Paste.Paste :set paste<CR>
   menu Paste.NoPaste :set nopaste<CR>
"  map <S-F6> :emenu Paste.<Tab>

endif


if has('gui_running')

   " Включаем подсветку при поиске.
   set hlsearch

   " Инкриментный поиск, при поиске сразу выделяем найденое не ждём нажатия Enter для поиска
   set incsearch

   " Убираем подсветку после поиска по нажатию на ESC
   nnoremap <esc> :noh<return><esc>

endif

" Folding Stuffs
set foldenable          " enable folding
set foldmethod=syntax   " Define blocks based on the syntax file
set foldcolumn=3        " Show Folding.
set foldlevel=1         " The first level of nesting is open, the other closed

" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>


let perl_fold=1
let perl_fold_blocks=1

let python_highlight_all = 1


set foldopen=all        " automatic opening when approaching


" "HOT KEY"
" Moving windows
nnoremap <C-Left> <C-W>h
nnoremap <C-Right> <C-W>l
nnoremap <C-Up> <C-W>k
nnoremap <C-Down> <C-W>j

" Resizing windows
nnoremap <S-Down> <C-W>+
nnoremap <S-Up> <C-W>-
nnoremap <S-Left> <C-W>>
nnoremap <S-Right> <C-W><

nnoremap <A-left> :tabp<CR>
nnoremap <A-Right> :tabn<CR>


nnoremap <win-Up> <C-W>s
""nnoremap <M-Right> <C-W>v
""nnoremap <C-Space> <C-W>c


" for perl file set compiler perl
autocmd! BufEnter,BufNewFile,BufRead *.pl compiler perl

" "Pathogen"
" Install
"https://github.com/tpope/vim-pathogen

call pathogen#infect()


" "ZenCoding" dependencies: pathogen
"https://github.com/mattn/zencoding-vim
let g:user_zen_expandabbr_key = '<C-Space>'
let g:use_zen_complete_tag = 1

" "Session"
"https://github.com/xolox/vim-session
" Save all the parameters in the session editor.
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
" taglist plugins

" "NERDtree"
"https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "right"
let g:NERDTreeTabsToggle = 1
let g:NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 0
let g:nerdtree_tabs_focus_on_files = 0


"" Open NERDTree in <F-7> key
nmap <silent> <F7> :NERDTreeToggle<CR>

" "nerdtree-tabs"
" https://github.com/jistr/vim-nerdtree-tabs

" "Mojolicious Plugins"
"https://github.com/vim-scripts/mojo.vim
" Enable mojo higlight.
let mojo_highlight_data = 1

"  "neocomplcache"
"  https://github.com/Shougo/neocomplcache
"
""let g:neocomplcache_min_syntax_length = 4
""let g:neocomplcache_enable_at_startup = 1

" "Tlist plugin"
"https://github.com/vim-scripts/taglist.vim
" dependencies: apt-get install exuberant-ctags
let Tlist_Auto_Update = 0
let Tlist_Auto_Open = 1
let Tlist_Show_Menu = 1
let Tlist_Use_Right_Window = 1

let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0

nnoremap <silent> <F8> :TlistToggle<CR>

" "dbext"
"https://github.com/vim-scripts/dbext.vim

" let g:dbext_default_profile_local = 'type=MYSQL:user=mysql:passwd=:dbname=mysql:extra=-t'
"let g:dbext_default_profile_PG='type=PGSQL:user=postgres'



" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F2> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1     " show function parameters
let OmniCpp_MayCompleteDot = 1          " autocomplete after .
let OmniCpp_MayCompleteArrow = 1        " autocomplete after ->
let OmniCpp_MayCompleteScope = 1        " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"  "omny"
        hi Pmenu guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
        hi PmenuSbar guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
        hi PmenuThumb guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

" hz
let colors_name = "ninja"

" Specify highlighting
highlight StatusLine   term=reverse ctermfg=LightGray ctermbg=Blue cterm=NONE
highlight StatusLineNC term=reverse ctermfg=DarkCyan ctermbg=Blue cterm=NONE

highlight CursorColumn term=underline cterm=underline ctermbg=NONE
highlight CursorLine   term=underline cterm=underline ctermbg=NONE

if &t_Co == 256
  highlight StatusLine   ctermbg=18
  highlight StatusLineNC ctermbg=18
  highlight CursorColumn ctermbg=235 ctermfg=NONE cterm=NONE
  highlight CursorLine   ctermbg=235 ctermfg=NONE cterm=NONE
  "highlight CursorColumn ctermbg=233 ctermfg=NONE cterm=NONE
  "highlight CursorLine   ctermbg=233 ctermfg=NONE cterm=NONE
endif


" end hz ))


" Настройки русской раскладки.

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
