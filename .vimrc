set ts=2
set nu
set t_Co=256

imap <F3> i
noremap <F3> <Esc>
set viminfo^=h

map <F2> :NERDTreeToggle<CR>

set mouse=a
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set guioptions-=T

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'mattn/zencoding-vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'bronson/vim-trailing-whitespace'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) remkoval of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
autocmd VimEnter * NERDTree

syntax on
let NERDTreeShowBookmarks=1
set background=dark
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=2
set cinkeys=0{,0},:,0#,!^F
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.ftl set filetype=html.ftl
set hlsearch
