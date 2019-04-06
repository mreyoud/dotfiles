runtime! debian.vim         " ensure options work with debian vim packages
syntax on

if has("autocmd")
  filetype on
  filetype plugin on
  filetype indent on
endif

set encoding=utf8          " utf8 everywhere
set showmode               " at least let yourself know what mode you're in
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
set shiftwidth=8           " number of spaces to auto-indent
set tabstop=8              " number of spaces for tab character
set nowrap                 " disable word wrap
set noswapfile
set hlsearch               " highlight search results
set nobackup               " make no backups
set wrapscan               " continue search from the top after hitting bottom
set autoindent             " copy indent from previous line

colorscheme solarized

if has("gui_running")
  set guioptions-=m        " remove menu
  set guioptions-=T        " remove toolbar
  set guioptions-=r        " remove right scrollbar
  set guioptions-=b        " remove bottom scrollbar
  set guioptions-=L        " remove left scrollbar
endif

nmap vs :vsplit<cr>
nmap hs :split<cr>

