runtime! debian.vim         " ensure options work with debian vim packages
syntax on

set undodir=$XDG_CACHE_HOME/vim/undo
set directory=$XDG_CACHE_HOME/vim/swap
set backupdir=$XDG_CACHE_HOME/vim/backup
set viminfo+='1000,n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after

if has("autocmd")
  filetype on
  filetype plugin on
  filetype indent on
endif

set encoding=utf8          " utf8 everywhere
set showmode               " at least know what mode you're in
set showcmd                " always show the command
set number
set ruler
set ignorecase             " case insensitive searching
set incsearch              " search whilst typing
set smartcase              " override ignorecase if upper case typed
set smarttab               " <BS> removes shiftwidth worth of spaces
set smartindent
set showmatch              " hilite matching brace of the closing brace
set colorcolumn=80
set shiftwidth=8
set tabstop=8
set nowrap
set noswapfile
set hlsearch               " highlight search results
set nobackup
set wrapscan               " continue search from the top after hitting bottom
set autoindent             " copy indent from previous line

if has("gui_running")
  set guioptions-=m        " remove menu
  set guioptions-=T        " remove toolbar
  set guioptions-=r        " remove right scrollbar
  set guioptions-=b        " remove bottom scrollbar
  set guioptions-=L        " remove left scrollbar
endif

colorscheme solarized

nmap vs :vsplit<cr>
nmap hs :split<cr>

