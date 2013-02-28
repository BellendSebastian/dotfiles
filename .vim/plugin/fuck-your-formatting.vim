" Fuck your formatting plugin for making stupid fucking javascript stop
" generating stupid fucking errors. Fuck you.
" Last Change: 2013 Feb 27
" Author: Diquebutte <dickbutt@diquebutte.com>
" License: a herp a derp

command! -bar FuckYou call s:fuckYou()

fun s:fuckYou()
    try
        exe '%s/\t/    /g'
    catch /E486: Pattern not found/
        echo ""
    endtry

    try
        exe '%s/function(/function (/g'
    catch /E486: Pattern not found/
        echo ""
    endtry

    try
        exe '%s/){/) {/g'
    catch /E486: Pattern not found/
        echo ""
    endtry

    try
        exe '%s/if(/if (/g'
    catch /E486: Pattern not found/
        echo ""
    endtry

    try
        exe '%s/\s\+$//g'
    catch /E486: Pattern not found/
        echo ""
    endtry
endfun

if !exists(":FuckYou")
    nmap <Leader>ig :FuckYou<CR>
endif
