call pathogen#runtime_append_all_bundles()

syntax on
filetype on
set nocompatible
set guifont=Monaco:h15
set visualbell

set encoding=utf-8

"show when you are in insert or visual mode
set showmode

"highlight the line containing the cursor
set cursorline

"show unwanted whitespaces
set listchars=tab:-✈,trail:,extends:>
set list!

" fast terminal connection
set ttyfast

"show filename in title window
set title

"show line numbers
set number

"indentation
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent

"search
set ignorecase
set smartcase
set incsearch
set hlsearch

"bracket matching
set showmatch

"COLOR SCHEMES
"colorscheme ir_black
"
"solarized options
set background=dark
colorscheme solarized


"status bar
set showcmd
set laststatus=2
set statusline=%f\ %(%m%r%h\ %)%([%Y]%)%=%<%-20{getcwd()}\ [b%n]\ %l/%L\ \|%v\|\ ~\ %p%%\ 

"$ after the group of characters we're changing
set cpoptions+=$

" COMMAND-T OPTIONS
set wildignore+=*.o,*.obj,.git,.svn,*.class,/target/*


" MAPPINGS
let mapleader=","

"Window handling with leader key
map <LEADER><LEADER>  <C-w><C-w>
map <LEADER>j       <C-w><C-j>
map <LEADER>k       <C-w><C-k>
map <LEADER>h       <C-w><C-h>
map <LEADER>l       <C-w><C-l>
map <LEADER>c       <C-w><C-c>

"Buffer handling with leader key
map <LEADER>3       :b#<CR>

"Open nerdtree with leader key
map <LEADER>n       :NERDTree<CR>

"Clean search
nnoremap <leader><space> :noh<cr>

"Disable arrows
map   <up>    <nop>
map   <down>  <nop>
map   <left>  <nop>
map   <right> <nop>
imap  <up>    <nop>
imap  <down>  <nop>
imap  <left>  <nop>
imap  <right> <nop>

"Disble F1 as :h shortchut in all modes
map   <F1>    <nop>
map!  <F1>    <nop>

" MacVim only
" + is for enabling
" - is for disabling
if has("gui_running")
  set guioptions-=r "right scrollbar is always present
  set guioptions-=R "right scrollbar is present on vertically splited windows
  set guioptions-=l "left scrollbar is always present
  set guioptions-=L "left scrollbar is present on vertically splited windows
  set guioptions-=b "bottom scrollbar is present
  set guioptions-=t "include tearoff menu items
  set guioptions-=T "include toolbar

  set lines=41 columns=100

  "aliases for resizing vim to fullscreen
  cnoreabbrev 13fs set columns=141
  cnoreabbrev 24fs set columns=239
endif
