set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin indent on " required

" Following line required before the 'colorscheme' command to enable CMNT:TWS
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
set background=dark
colorscheme gruvbox

set number
set ruler
set showcmd
set incsearch
set hlsearch
set cursorline

set showmatch " Show matching brackets when text indicator is over them
set mat=2     " How many tenths of a second to blink when matching brackets

set noerrorbells
set novisualbell

" Turn on the Wild menu
set wildmenu

" CtrlP - fuzzy file finder
set runtimepath^=~/.vim/bundle/ctrlp.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
" " move to the previous/next tabpage.
nnoremap <C-j> gT
nnoremap <C-k> gt
" " Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" [CMNT:TWS] Highlight trailing whitespace with a bright red color
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Linebreak on 500 characters
set lbr
set tw=500

set ai    "Auto indent
set si    "Smart indent
set wrap  "Wrap lines

nmap <C-q> :NERDTreeToggle<CR>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

syntax on
