set title " Show open file name
set number " Line numbers
set mouse=a " Cursor support
set nowrap
set cursorline " Highlight current line
set colorcolumn=120  " Column limit
set relativenumber
set showmatch
set hlsearch
set guifont=Operator\ Mono\ Lig
set ruler
set autoindent
set clipboard=unnamed
syntax enable
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Indentation with 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insert scpaces instead of <Tab>s

set hidden " Allow swith between buffers without saving 

set ignorecase  " Ingore capital letters when searching
set smartcase  " Don't ignore capital letters if the search word has

set spelllang=en,es  " Eng and Esp corrections
set encoding=utf8

set termguicolors  " Enables a greater color palette 

let g:mapleader = ' '  " Space a leader key 

nnoremap <leader>w :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <leader> + y to copy to the clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <leader> + d to cut to the clipboard 
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <leader> + p to paste from the clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Move to the next buffer with <leader> + l
nnoremap <leader>l :bnext<CR>

" Move to the previous buffer with <leader> + j
nnoremap <leader>j :bprevious<CR>

" Close the current buffer <leader> + q
nnoremap <leader>q :q<CR>

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" EasyMotion new config
let g:asyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Coc Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Airline
let g:airline_powerline_fonts = 1
" --------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle plugins manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'neoclide/coc.nvim', {'branch': 'release'} " Add Javascript/TS intellisense support
Plugin 'mhartington/oceanic-next'
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'townk/vim-autoclose' " Autoclose chars
Plugin 'easymotion/vim-easymotion'
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier'
Plugin 'yggdroot/indentline'
Plugin 'eiiches/vim-rainbowbrackets'

" Currently testing
Plugin 'kien/ctrlp.vim'
Plugin 'gilsondev/searchtasks.vim'

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'ajmwagar/vim-deus'
Plugin 'ayu-theme/ayu-vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'ghifarit53/tokyonight-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Plugins configurations
colorscheme tokyonight
let g:deus_termcolors=256
let g:ctrlp_working_path_mode = 'ra'
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:rainbowbrackets_enable_curly_brackets = 1
let g:rainbowbrackets_colors =
            \ [
            \   'ctermfg=9',
            \   'ctermfg=10',
            \   'ctermfg=33',
            \   'ctermfg=190'
            \ ]
