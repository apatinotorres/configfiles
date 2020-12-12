call plug#begin('~/.config/vim/plugged')
" Tools
    Plug 'junegunn/goyo.vim'
    Plug 'preservim/nerdtree'
    Plug 'davidhalter/jedi-vim'
" Color-schemes
    Plug 'wadackel/vim-dogrun'		  " purple colorscheme
    Plug 'ajh17/Spacegray.vim' 		  " gray colorscheme
    Plug 'morhetz/gruvbox'		
" LaTeX preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end() 

syntax on 
set background=dark
colorscheme gruvbox 
set number
set laststatus=2

hi Normal guibg=NONE ctermbg=NONE

set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\                   " buffer number
set statusline+=%#Visual#               " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#             " colour
set statusline+=%R                      " readonly flag
set statusline+=%M                      " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     	" colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                      " right align
set statusline+=%#CursorLine#   	" colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     	" colour
set statusline+=\ %3l:%-2c\         	" line + column
set statusline+=%#Cursor#       	" colour
set statusline+=\ %3p%%\                " percentage

highlight LineNr ctermfg=grey

set numberwidth=4
set exrc
set secure
map <C-a> :NERDTreeToggle<CR>

set splitbelow splitright

set tabstop=4
set shiftwidth=4
set expandtab
:autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
"function Apa()
"    :read ~/.vim/templates/apa.tex
"endfunction
let g:livepreview_previewer = 'zathura'
