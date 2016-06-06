set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" show git diff
Plugin 'airblade/vim-gitgutter'

" Vim-script library
Plugin 'L9'

" Insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

" plugin that helps to end certain structures automatically.
Plugin 'tpope/vim-endwise'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlpvim/ctrlp.vim'

" The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers
Plugin 'Shougo/unite.vim'

" html generator
Plugin 'rstacruz/sparkup'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plugin 'mattn/emmet-vim'

" always highlights the XML/HTML tags that enclose your cursor location
Plugin 'Valloric/MatchTagAlways'

" filesistem explorer for vim
Plugin 'scrooloose/nerdtree'

" This plugin aims at making NERDTree feel like a true panel, independent of tabs.
Plugin 'jistr/vim-nerdtree-tabs'

" A plugin of NERDTree showing git status flags.
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Syntastic is a syntax checking plugin for Vim that runs files through external syntax checkers
Plugin 'scrooloose/syntastic'

" Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure
Plugin 'majutsushi/tagbar'

" vim multiproc !! will be compiled "make"
Plugin 'Shougo/vimproc.vim'

" Changes Vim working directory to project root (identified by presence of known directory or file).
Plugin 'airblade/vim-rooter'

" generate ctags "sudo apt-get install exuberant-ctags"
Plugin 'szw/vim-tags'

"  enable repeating supported plugin maps with "."
Plugin 'tpope/vim-repeat'

"  is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'

" you will lear vim  disable arow button etc...
Plugin 'takac/vim-hardtime'

" code search tool; Vim plugin for the_silver_searcher, 'ag',
Plugin 'rking/ag.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" An extensible & universal comment vim-plugin
Plugin 'tomtom/tcomment_vim'

" Create gist from vim
Plugin 'mattn/gist-vim'

" Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'

" split arbitrary calls with multiple arguments into multiple lines.
Plugin 'weierophinney/argumentrewrap'

" a vim plugin to generate php getters and setters from class properties
Plugin 'docteurklein/php-getter-setter.vim'

" golang
Plugin 'fatih/vim-go'

" "!!!!" A collection of language packs for Vim.
Plugin 'sheerun/vim-polyglot'

" Debugin scripts
Plugin 'joonty/vdebug'

" autocomplete for php
Plugin 'shawncplus/phpcomplete.vim'

" togle line numbers
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Show vim marks
Plugin 'kshenoy/vim-signature'

" coffee-script systax heiglight
"Plugin 'kchmck/vim-coffee-script'

" golang support
"Plugin 'fatih/vim-go'

" slim template support
"Plugin 'slim-template/vim-slim'

" pug template before calling jade
" Plugin 'digitaltoad/vim-pug'

" ruby support
"Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

" set shell as sh not a bash or some else
set shell=sh

" ?
set wildmode=list:longest,full

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" No annoying sound on errors
set noerrorbells
set novisualbell

" always show cursor position
set ruler

" nice copypaste
vmap <C-Insert> "+y
vmap <S-Insert> "+p
nmap <S-Insert> "+p
imap <S-Insert> <Esc>"+pi



" retab and save
map <leader>:retab!<bar>:w<cr>

" smart tab's
set softtabstop=4 tabstop=4 shiftwidth=4 expandtab
set smarttab

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

" do not wrap lines
set nowrap

"set mouse=a
set mousemodel=popup

" Enable automatic indenting
set autoindent

" Turn on the 'smart' automatic indenting
set smartindent


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

  set matchtime=2
  set matchpairs+=<:>

  " Убираем подсветку после поиска по нажатию на ESC
  nnoremap <esc> :noh<return><esc>

    set colorcolumn=81
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>81v.\+', -1)


 " remove startup text
   set shortmess+=tToOI
 "  set guioptions-=e " включаем none-gui табы
   set guioptions-=r " отключаем правый scrollbar
   set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
   set guioptions-=b " отключаем нижний scrollbar
   set guioptions-=l " отключаем левый scrollbar
   set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
   set guioptions-=T " отключаем панель инструментов
"   set guioptions-=m " отключаем меню

   function! ToggleGUICruft()
      if &guioptions=='i'
        exec('set guioptions=imTrL')
      else
        exec('set guioptions=i')
    endif
  endfunction

  set t_Co=256
  set guitablabel=%M\ %t
endif

" Turn on the display the currently executing command in the lower right corner
" of the screen
set showcmd

" The size of the history to undo edits
set undolevels=10000

"centrolize cursor
set scrolloff=3

" history cmd line
set history=50


" use [RO] for [readonly] to save space in the message line:
 set shortmess+=r

" Show the status bar is always
set laststatus=2


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

set completeopt=menuone,longest,preview


" disable showing line number for plugins window
:autocmd FileType nerdtree set nonumber
:autocmd FileType taglist set nonumber

set linespace=10

" "HOT KEY"
nnoremap <C-left> :tabp<CR>
nnoremap <C-Right> :tabn<CR>

" Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

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
endif

set wildignore+=*.so,*.swp,*.zip,.git,*.tar.gz,~*,*.tar.bz2,*.rar,*.o,*.pyc,*.hg,*/cache/*
set wildignore+=*.bz,*.iso,*.o,*.obj,*.bak,*.exe,*.gz,*.jpeg,*.png,*.jpg,*.flw,*.mp4,*.tar,*.mp3,*.pdf,*.djvu

" Show the status bar is always
set laststatus=2
if has('gui_running')

  set statusline=
  set statusline+=%7*\[%n]                                       "buffernr
  set statusline+=%1*\[%<%t]\                                          "File+path
  set statusline+=%2*\ %y\                                            "FileType
  set statusline+=%3*\ en:%{&enc}\ ff:%{&ff}\ f:%{&fenc}           "Encoding
  set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\                      "Encoding2
  set statusline+=%4*\ %{fugitive#statusline()}\                       "Git
  set statusline+=%5*\ %=(ch:%3b\ hex:%2B)\                         "Char in
  set statusline+=%8*\ %=row:%l/%L\ (%03p%%)\                       "Rownumber/total (%)
  set statusline+=%9*\ col:%03c\                                      "Column
  set statusline+=%0*\ \ %m%r%w\ %P\ \                                "Modified? Readonly? Top/bot.



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
  " brases
  "hi MatchParen cterm=bold ctermbg=red ctermfg=magenta
  "hi Search cterm=NONE ctermfg=grey ctermbg=blue
  hi parens ctermfg=red
 "call s:hibg("MatchParen","#FF0000","Red",18)
 "autocmd BufRead, BufNewFile * syn match parens /[(){}\[\]]/ | hi parens ctermfg=red
 hi Cursor ctermbg=15 ctermfg=8
else
  set statusline=%t%m%r%h%w\ %y\ \ enc:%{&enc}\ format:%{&ff}\ file:%{&fenc}\ %{fugitive#statusline()}%=\ (\ ch:%3b\ hex:%2B\ )\ col:%2c\ line:%2l/%L\ [%2p%%]
endif


" CTRLP

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.bz2

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links' }


" UNITE

" MatchTagAlweys

let g:mta_set_default_matchtag_color = 0
let g:mta_use_matchparen_group = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
nnoremap <leader>% :MtaJumpToOtherTag<cr>

" NERDTREE

" TAGBAR
let g:tagbar_type_asciidoc = {
    \ 'ctagstype' : 'asciidoc',
    \ 'kinds' : [
        \ 'h:table of contents',
        \ 'a:anchors:1',
        \ 't:titles:1',
        \ 'n:includes:1',
        \ 'i:images:1',
        \ 'I:inline images:1'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

let g:tagbar_type_d = {
            \ 'ctagstype' : 'd',
            \ 'kinds'     : [
            \ 'c:classes:1:1',
            \ 'f:functions:1:1',
            \ 'T:template:1:1',
            \ 'g:enums:1:1',
            \ 'e:enumerators:0:0',
            \ 'u:unions:1:1',
            \ 's:structs:1:1',
            \ 'v:variables:1:0',
            \ 'i:interfaces:1:1',
            \ 'm:members',
            \ 'a:alias'
            \ ],
            \'sro': '.',
            \ 'kind2scope' : {
            \ 'c' : 'class',
            \ 'g' : 'enum',
            \ 's' : 'struct',
            \ 'u' : 'union',
            \ 'T' : 'template'
            \},
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u',
            \ 'template'  : 'T'
            \ },
            \ 'ctagsbin' : 'dscanner',
            \ 'ctagsargs' : ['--ctags']
            \ }

let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

let g:tagbar_type_idlang = {
    \ 'ctagstype' : 'IDL',
    \ 'kinds' : [
        \ 'p:Procedures',
        \ 'f:Functions',
        \ 'c:Common Blocks'
        \ ]
    \ }

let g:tagbar_type_make = {
            \ 'kinds':[
                \ 'm:macros',
                \ 't:targets'
            \ ]
\}

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}

let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

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

 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}

let g:tagbar_type_scala = {
    \ 'ctagstype' : 'scala',
    \ 'sro'       : '.',
    \ 'kinds'     : [
      \ 'p:packages',
      \ 'T:types:1',
      \ 't:traits',
      \ 'o:objects',
      \ 'O:case objects',
      \ 'c:classes',
      \ 'C:case classes',
      \ 'm:methods',
      \ 'V:values:1',
      \ 'v:variables:1'
    \ ]
\ }

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

let g:tagbar_type_snippets = {
    \ 'ctagstype' : 'snippets',
    \ 'kinds' : [
        \ 's:snippets',
    \ ]
\ }

let g:tagbar_type_vhdl = {
    \ 'ctagstype': 'vhdl',
    \ 'kinds' : [
        \'d:prototypes',
        \'b:package bodies',
        \'e:entities',
        \'a:architectures',
        \'t:types',
        \'p:processes',
        \'f:functions',
        \'r:procedures',
        \'c:constants',
        \'T:subtypes',
        \'r:records',
        \'C:components',
        \'P:packages',
        \'l:locals'
    \]
\}

let g:tagbar_type_xml = {
    \ 'ctagstype' : 'WSDL',
    \ 'kinds'     : [
        \ 'n:namespaces',
        \ 'm:messages',
        \ 'p:portType',
        \ 'o:operations',
        \ 'b:bindings',
        \ 's:service'
    \ ]
\ }

let g:tagbar_type_xquery = {
    \ 'ctagstype' : 'xquery',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'v:variable',
        \ 'm:module',
    \ ]
\ }

let g:tagbar_type_xsd = {
    \ 'ctagstype' : 'XSD',
    \ 'kinds'     : [
        \ 'e:elements',
        \ 'c:complexTypes',
        \ 's:simpleTypes'
    \ ]
\ }

let g:tagbar_type_xslt = {
  \ 'ctagstype' : 'xslt',
  \ 'kinds' : [
    \ 'v:variables',
    \ 't:templates'
  \ ]
\}

nmap <F8> :TagbarToggle<CR>

" vim repeat

" vim-hardmode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardTimeOn()

let g:hardtime_maxcount = 5
" unitsnipets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_phpcs_disable = 1
let g:syntastic_phpmd_disable = 1


autocmd CompleteDone * pclose


