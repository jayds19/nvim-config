set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

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

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español
set encoding=utf8

set termguicolors  " Activa true colors en la terminal

let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>w :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'ajmwagar/vim-deus'
Plugin 'ayu-theme/ayu-vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'ghifarit53/tokyonight-vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
"Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'mhartington/oceanic-next'
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'townk/vim-autoclose' " Autoclose chars
Plugin 'easymotion/vim-easymotion'
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier'
Plugin 'yggdroot/indentline'
Plugin 'eiiches/vim-rainbowbrackets'

" TEST
Plugin 'kien/ctrlp.vim'
Plugin 'gilsondev/searchtasks.vim'


" Plugin 'nvim-lua/popup.nvim'
" Plugin 'nvim-lua/plenary.nvim'
" Plugin 'nvim-telescope/telescope.nvim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
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
