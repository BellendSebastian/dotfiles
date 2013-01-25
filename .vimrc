set ts=2
set nu
set t_Co=256

imap <F3> i
noremap <F3> <Esc>
set viminfo^=h

map <F2> :NERDTreeToggle<CR>
set fillchars=vert:\ 
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set mouse=a
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set guioptions-=T

set nocompatible
filetype off
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
Bundle 'scrooloose/nerdcommenter'
Bundle 'nathanaelkane/vim-indent-guides'

filetype plugin indent on

autocmd VimEnter * NERDTree

syntax on
let NERDTreeShowBookmarks=1
set background=dark
set ts=2 sw=2 et
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
set list listchars=tab:\>\ ,trail:.
highlight Whitespace cterm=underline gui=underline ctermbg=red guibg=red ctermfg=gray guifg=yellow
autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=red guibg=red ctermfg=yellow guifg=yellow
match Whitespace /  \+/
