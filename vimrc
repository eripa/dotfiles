" ########################################################################
" # VI text editor setup
" ########################################################################

" pathogen
execute pathogen#infect()

" theme
let g:rehash256 = 1
color molokai

"" NERDTRee
" open automatically
autocmd vimenter * NERDTree
" goto filebuffer
autocmd VimEnter * wincmd p
" shortcut:
map <C-n> :NERDTreeToggle<CR>
" close Vim if only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" open NERDTree if vim is launched without argument
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set our tabs to two spaces
set ts=2
set shiftwidth=2

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