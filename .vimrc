call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'jxnblk/vim-mdx-js'
  Plug 'tpope/vim-surround'
  Plug 'jparise/vim-graphql'
  Plug 'scrooloose/nerdtree'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'prettier/vim-prettier'
  Plug 'w0rp/ale'
  Plug 'morhetz/gruvbox'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Good defaults
set termguicolors
set nocompatible
set autoindent
set smartindent
set smarttab
set history=50
set noruler
set noshowcmd
set number
set hlsearch
syntax on

" Tab expansion
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

set path+=**
set wildmenu

set guifont=Hasklig:h12
set guioptions=
set linespace=5

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>


" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" when running at every change you may want to disable quickfix
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:NERDTreeNodeDelimiter = "\u00a0"
