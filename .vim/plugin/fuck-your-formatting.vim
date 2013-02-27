" Fuck your formatting plugin for making stupid fucking javascript stop
" generating stupid fucking errors. Fuck you.
" Last Change: 2013 Feb 27
" Author: Diquebutte <dickbutt@diquebutte.com>
" License: a herp a derp

command! -bar FuckYou call s:FuckYou()

function s:FuckYou()
    exec '%s/\t/    /g'
    exec '%s/function(/function (/g'
    exec '%s/){/) {/g'
    exec '%s/if(/if (/g'
    exec '%s/\s\+$//g'
endfunction

nmap <Leader>ig :FuckYou<CR>
