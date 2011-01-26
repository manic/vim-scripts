" Plugin: Pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set background=dark
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf8,cp950,latin1
set t_Co=256
set hls		    "highlight search
set number	    "每行最前加行號
set ruler	    "Vim 窗口的右下角顯示當前光標的位置
set secure	    "讓 sell write commands 不允許被執行 in .vimrc .exrc
" sw = shiftwidth, 加上 softtabstop 確保縮排和一個 tab 是 4 個空白
set sw=4
set softtabstop=4
set bs=2
set termencoding=utf8
set ai
set si
set cindent
set nocompatible
syntax on
filetype plugin indent on

"Ruby
augroup myfiletypes
autocmd!
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

highlight Comment ctermfg=darkgreen
highlight Search term=reverse ctermbg=green ctermfg=7
au BufNewFile,BufRead *.phtml set filetype=php
colorscheme wombat256

" Plugin: php-doc.vim
" inoremap <C-H> <ESC>:call PhpDocSingle()<CR>i
" nnoremap <C-H> :call PhpDocSingle()<CR>
" vnoremap <C-H> :call PhpDocRange()<CR>
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>

let mapleader=","

" Simply Javascript Indenter Options: brief mode
let g:SimpleJsIndenter_BriefMode = 1

" Autocomplp g:acp_behaviorSnipmateLength
let g:acp_behaviorSnipmateLength = 1
