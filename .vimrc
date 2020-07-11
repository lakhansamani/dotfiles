call plug#begin('~/.vm/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'jxnblk/vim-mdx-js'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-sleuth'
  Plug 'jparise/vim-graphql'
  Plug 'scrooloose/nerdtree'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'prettier/vim-prettier'
  Plug 'w0rp/ale'
  Plug 'morhetz/gruvbox'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'flowtype/vim-flow'
  Plug 'mileszs/ack.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'wincent/command-t', {
    \ 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }
  Plug 'wincent/terminus'
  Plug 'ervandew/supertab'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-commentary'
  Plug 'chriskempson/base16-vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'stephpy/vim-yaml'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

" Good defaults


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
" colorscheme base16-default-dark
" set spell spelllang=en_us

" Tab expansion
set shiftwidth=2
set expandtab
" set softtabstop=0 noexpandtab
" set foldmethod=indent
set backspace=indent,eol,start
filetype plugin indent on

set path+=**
set wildmenu

set guifont=Monaco:h16
" set guioptions=
set linespace=16

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#bracket_spacing = 'true'
" when running at every change you may want to disable quickfix
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:NERDTreeNodeDelimiter = "\u00a0"

" clear search with shift+enter
nnoremap <S-CR> :noh<CR>

" copy to clipboard
set clipboard=unnamed
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

" Automatically indent pasted lines
nnoremap p p=`]
nnoremap P P=`]

" Re-select the last pasted text
nnoremap gp `[v`]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

" Highlight search matches
set hlsearch

" Ignore node_modules with command-t
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"

" Open :Ack with <Leader>a
nnoremap <Leader>a :Ack<Space>
vnoremap <Leader>a :Ack<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax

" Allow JSX in .js files
let g:jsx_ext_required=0

" Commenting lines
noremap <leader>/ :Commentary<cr>
autocmd FileType apache setlocal commentstring=#\ %s

" Change line color
" highlight LineNr guifg=Grey


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
