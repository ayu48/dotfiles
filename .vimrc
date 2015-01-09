"set runtimepath+=~/.vim_runtime
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

"color
"colorscheme solarized

"display
set encoding=utf-8
set cursorline
set number
syntax enable
set laststatus=2

"insert format
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

"search
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch

"sound
set noeb vb t_vb=

" Undo file.
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Use tab to navigate splits.
nnoremap <tab> <C-w><C-w>
nnoremap <s-tab> <C-w><left>

" Remember last cursor position.
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g'\"" | endif

" Highlight extra whitespace and tabs.
highlight ExtraWhitespace ctermbg=3
match ExtraWhitespace /\s\+$\|\t\+/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=3

noremap <space>: :sort<cr>gv:Tabular /:<cr>gv:s/ :/:/g<cr>:nohl<cr>
noremap <space>= :Tabular /=<cr>
noremap <space>P :CtrlP<cr>
