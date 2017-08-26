set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'flazz/vim-colorschemes'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'ciaranm/detectindent'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()

syntax on
filetype plugin indent on
colorscheme tchaba2

set autoindent
set showmode
set number
set smartindent
set ic
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set backspace=2
set hlsearch
set incsearch
set scrolloff=3
set visualbell
set t_vb=
set rtp+=~/.fzf

" align
noremap <space>: :Tabularize /:<cr>gv:s/ :/:/g<cr>:noh<cr>
noremap <space>= :Tabularize /^[^=]*\zs=<cr>

" Fzf
noremap :F :FZF

" Close preview window after selection
autocmd CompleteDone * pclose

" Highlight column 101
set colorcolumn=101
highlight ColorColumn ctermbg=3

" Highlight extra whitespace and tabs.
highlight ExtraWhitespace ctermbg=3
match ExtraWhitespace /\s\+$\|\t\+/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=3

" Use tab to navigate splits.
nnoremap <tab> <C-w><C-w>
nnoremap <s-tab> <C-w><left>

" Move multiple lines at once.
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <C-l> 10l
nnoremap <C-h> 10h
vnoremap <C-j> 10j
vnoremap <C-k> 10k
vnoremap <C-l> 10l
vnoremap <C-h> 10h

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
