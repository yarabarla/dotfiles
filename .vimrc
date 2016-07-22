""""""""""
" Vundle "
""""""""""
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'hdima/python-syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""
" Python "
""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8 |
    \ let python_highlight_all=1 |
    \ set nu

let python_highlight_all=1

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

""""""""""""""
" Javascript "
""""""""""""""
au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set nu

""""""""""""""""
" Autocomplete "
""""""""""""""""
" Close autocomplete window
let g:ycm_autoclose_preview_window_after_completion=1

" Go to the definition
nnoremap <leader>g  :YcmCompleter GoTo<CR>

"""""""""""""
" Solarized "
"""""""""""""
colorscheme solarized

" Matches transparent background
let g:solarized_termtrans=1

"""""""""""""
" Powerline "
"""""""""""""
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ 5
set laststatus=2

" Removes redundant mode under powerline
set noshowmode

" Enables powerline colors in tmux
set term=screen-256color

""""""""""""
" NerdTree "
""""""""""""
" Closes vim if NerdTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle for tree
map , :NERDTreeToggle<CR>

"""""""""""
" Folding "
"""""""""""
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with space
nnoremap <space> za

"""""""""""""""""
" Miscellaneous "
"""""""""""""""""
" Shift-o lag after ESC was very annoying
:set ttimeoutlen=100

" Moving between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
syntax on
