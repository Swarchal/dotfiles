filetype off
filetype plugin indent on
filetype plugin on
syntax on

set tw=79
set nowrap " dont automatically wrap text on load
set fo-=t " dont automatically wrap text when typing

" spaces > tabs
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

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

" show trailing whitespace
set list listchars=tab:»·,trail:·
set list

" base16
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

" set up vim-slime to work with tmux
let g:slime_target="tmux"
let g:slime_python_ipython=1

" allow saving files as sudo when I don't open vim as root
cmap w!! w !sudo tee > /dev/null %

" coloured status bar
set laststatus=2

au InsertEnter * hi StatusLine term=reverse ctermbg=1 gui=undercurl guisp=Red
au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
