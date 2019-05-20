call plug#begin('~/.vm/plugged')
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
  Plug 'leafgarland/typescript-vim'
  Plug 'flowtype/vim-flow'
  Plug 'mileszs/ack.vim'
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
set modifiable
set showtabline=2
set ma
syntax on

" Tab expansion
set shiftwidth=2
set expandtab
set softtabstop=0 noexpandtab


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
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:NERDTreeNodeDelimiter = "\u00a0"

" clear search with shift+enter
nnoremap <S-CR> :noh<CR>

set clipboard=unnamed
" copy to clipboard
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>


" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Navigate faster
noremap <S-Up> 5k
noremap <S-Down> 5j



