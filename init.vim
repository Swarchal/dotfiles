filetype on
filetype plugin indent on
filetype plugin on
set background=dark
syntax on

set encoding=utf-8

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

set termguicolors
let g:airline_theme = 'base16'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" set up vim-slime to work with tmux
let g:slime_target="tmux"
let g:slime_python_ipython=1
let g:slime_target = "neovim"

" Allow saving of files as sudo when I forget to open vim as root
cmap w!! w !sudo tee > /dev/null %

" zah/nim plugin jump to definition
fun! JumpToDef()
    if exists("*GotoDefinition_" . &filetype)
        call GotoDefinition_{&filetype}()
    else
        exe "norm! \<C-]>"
    endif
endf


call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdTree'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'chadvoegele/nvim-slime'
Plug 'zah/nim.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'ervandew/supertab'
call plug#end()


colorscheme base16-default-dark
let base16colorspace=256
