" ########################################################################
" # VI text editor setup
" ########################################################################

" pathogen
execute pathogen#infect()

" theme
let g:rehash256 = 1
color molokai

" set our tabs to two spaces
set ts=2

" turn syntax highlighting on by default
syntax on

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" do not highlight words when searching for them. it's distracting.
set nohlsearch

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start

" expandtab
set expandtab

" destroy all software tweaks
"" run current file
map <Leader>t :w\|:!%<CR>
"" edit and view alias for current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <Leader>e :edit %%
map <Leader>v :view %%
"" switch between two files
map <Leader><Leader> <C-^>