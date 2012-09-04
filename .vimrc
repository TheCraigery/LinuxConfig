"" Wrap searches
set wrapscan

"" Intelligent searching
set ignorecase "ci search
set smartcase  "smart case searching
set hlsearch  "highlight search
set incsearch "incremental search

"" Traverse line breaks with arrow keys
set whichwrap=b,s,<,>,[,]

"" Syntax highlighting
filetype plugin on
syntax on
set background=dark

"" Show matching brackets
set showmatch

"" Line numbering
set number

"" Toggle line numbering
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"" Indentation
filetype indent on
set expandtab "spaces replace tabs
set smarttab  "smart tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set ai "Auto indent
set si "Smart indent

"" Set cursor to previous location
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"" Delete trailing whitespace on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

