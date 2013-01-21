set ts=2
set nu
set t_Co=256

imap <F3> i
noremap <F3> <Esc>
set viminfo^=h

map <F2> :NERDTreeToggle<CR>
map <C-b> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!gcc % -o %<"
  exec "! ./%<"
endfunc
set fillchars=vert:\ 
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

Bundle 'gmarik/vundle'
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
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'hallettj/jslint.vim'

filetype plugin indent on

autocmd VimEnter * NERDTree

syntax on
let NERDTreeShowBookmarks=1
let NERDTreeMapToggleHidden=1
set background=dark
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=8
set shiftwidth=2
set cinkeys=0{,0},:,0#,!^F
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.ftl set filetype=html.ftl
set hlsearch
