set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'wookiehangover/jshint.vim'
Bundle 'zeis/vim-kolor'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'msanders/snipmate.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'bling/vim-airline'

filetype plugin indent on

" Settings
syntax on
set nu			"line numbers
set t_Co=256		"256 colors
set sh=/bin/bash	"use bash for internal shell
set autoindent		"auto indent
set tabstop=4		"tab stop
set shiftwidth=4    "bored with writing comments now
set expandtab
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=0
set mouse=a
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set guioptions-=T
colorscheme kolor
set cursorline
set hlsearch
set list listchars=tab:\>\ ,trail:.
set laststatus=2
set relativenumber

" Neocomplcache stuff
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3

" Colour guff
hi NonText guifg=bg ctermfg=bg
hi LineNr guibg=bg ctermbg=bg
hi Whitespace cterm=underline gui=underline ctermbg=red guibg=red ctermfg=gray guifg=yellow

" Custom commands
map <TAB> :NERDTreeToggle<CR>
map <S-TAB> :QFix<CR>

" Toggle quick fix window
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction
