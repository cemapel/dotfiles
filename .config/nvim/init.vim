call plug#begin()
  " Vim
    Plug 'vimwiki/vimwiki'

    " Hugo
    Plug 'ferrine/md-img-paste.vim'

    " Code
    Plug 'metakirby5/codi.vim'
    Plug 'vim-syntastic/syntastic'
		Plug 'scrooloose/nerdcommenter'

    " Appearance
    Plug 'blueyed/vim-diminactive'
    Plug 'oblitum/rainbow'
    Plug 'vim-airline/vim-airline'

    " Motion
    Plug 'easymotion/vim-easymotion'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/goyo.vim'
    Plug 'tpope/vim-surround'

    " Completion
    Plug 'Valloric/YouCompleteMe'

    " Test
    Plug 'scrooloose/nerdtree'
call plug#end()

let mapleader = ","

filetype plugin on
syntax on

set termguicolors mouse=a nomodeline
set autoread autochdir ignorecase
set encoding=utf-8
set number relativenumber wrap linebreak
set nobackup nowritebackup noswapfile nocompatible
set autoindent smartindent
set showmatch incsearch softtabstop=2 tabstop=2
set undofile undolevels=1000 undoreload=30000 undodir=/tmp/nvim

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
nmap <leader>co :Codi<CR>
nmap <leader>go :Goyo<CR>
let g:syntastic_check_on_open = 1
let g:rainbow_active = 1
map <C-n> :NERDTreeToggle<CR>
