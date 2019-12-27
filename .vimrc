filetype on
filetype plugin indent on
filetype plugin on
syntax on

set tw=79
set nowrap " dont automatically wrap text on load
set fo-=t " dont automatically wrap text when typing

" spaces > tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" wrap .tex files
augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType tex set wrap linebreak nolist
    autocmd FileType tex match Errormsg ''
augroup END

set number
set rnu
set background=dark

match ErrorMsg '\%>80v.\+'
inoremap jk <Esc>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
filetype plugin on
let g:pydiction_location='/usr/share/vim/vim74/pydiction/complete-dict' 

" show trailing whitespace
set list listchars=tab:»·,trail:·
set list

" highlight search matches
set hlsearch

" base16
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

" set up vim-slime to work with tmux
let g:slime_target="tmux"
let g:slime_python_ipython=1

" Allow saving of files as sudo when I forget to open vim as root
cmap w!! w !sudo tee > /dev/null %

" coloured status bar
set laststatus=2

au InsertEnter * hi StatusLine term=reverse ctermbg=1 gui=undercurl guisp=Red
au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
