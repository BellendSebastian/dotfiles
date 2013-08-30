set ts=2
set nu
set t_Co=256
set sh=/bin/bash

set viminfo^=h

map <TAB> :NERDTreeToggle<CR>
map <S-TAB> :QFix<CR>
im <A-Space> <C-x><C-o>
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
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'kchmck/vim-coffee-script'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'wookiehangover/jshint.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'uggedal/go-vim'
Bundle 'gregsexton/MatchTag'

filetype plugin indent on

autocmd VimEnter * NERDTree
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2

let g:ctrlp_working_path_mode = 2
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_mruf_relative = 1
let g:ctrlp_dotfiles = 0
let g:ctrlp_mruf_case_sensitive = 0
let g:EclimJavascriptValidate = 0

syntax on
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=0
set background=dark
set ts=2 sw=2 et
set cindent
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set cinkeys=0{,0},:,0#,!^F
set cursorline
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.fabfile set filetype=python
autocmd BufNewFile,BufRead *.ftl set filetype=html.ftl
autocmd BufNewFile,BufRead *.jade set filetype=jade
set hlsearch
set list listchars=tab:\>\ ,trail:.
highlight Whitespace cterm=underline gui=underline ctermbg=red guibg=red ctermfg=gray guifg=yellow
autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=red guibg=red ctermfg=yellow guifg=yellow
match Whitespace /  \+/
function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction
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
