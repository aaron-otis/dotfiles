
" Add plugins.
call plug#begin()

    "Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    " enable ncm2 for all buffers
    "autocmd BufEnter  *  call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    " NOTE: you need to install completion sources to get completions. Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    "Plug 'ncm2/ncm2-bufword'
    "Plug 'ncm2/ncm2-path'
    "Plug 'ncm2/ncm2-racer'
 
    Plug 'w0rp/ale'
    Plug 'nvie/vim-flake8'

	"Plug 'autozimu/LanguageClient-neovim', {
    "  \ 'branch': 'next',
    "  \ 'do': 'bash install.sh',
    "  \ }

    "Plug 'ncm2/ncm2-neosnippet'
    Plug 'tpope/vim-fugitive'

    " Deoplete
    if has('nvim')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1

    Plug 'Shougo/neosnippet.vim'
	Plug 'Shougo/neosnippet-snippets'

    Plug 'zchee/deoplete-jedi'
    Plug 'davidhalter/jedi-vim'
    " disable autocompletion, cause we use deoplete for completion
    let g:jedi#completions_enabled = 0
    " open the go-to function in split, not another buffer
    let g:jedi#use_splits_not_buffers = "right"

    Plug 'vim-airline/vim-airline'

    Plug 'cjuniet/clang-format.vim'

    "let g:ncm2_pyclang#library_path = '/usr/lib/llvm-5.0/lib'

    "Plug 'neomake/neomake'

    " Color schemes.
    Plug 'ajh17/spacegray.vim'
    Plug 'cocopon/iceberg.vim'
    Plug 'kkpmw/sacredforest-vim'
    Plug 'henrynewcomer/vim-theme-papaya'
    Plug 'wolf-dog/nighted.vim'
    Plug 'wolf-dog/sceaduhelm.vim'
    Plug 'kamwitsta/mythos'
    Plug 'morhetz/gruvbox'
    Plug 'kiddos/malokai.vim'
    Plug 'fenetikm/falcon'
    Plug 'dikiaap/minimalist'
    Plug 'semmons99/tomorrow-vim'
    Plug 'knop-01/tortus'
    Plug 'mukiwu/vim-tomorrow-night'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'https://github.com/tpope/vim-vividchalk.git'


call plug#end()

"call neomake#configure#automake('nw', 750)

set nocompatible

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif

if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif


" Coloring.
syntax on
colorscheme vividchalk

let g:python3_host_prog = expand("/usr/bin/python3")

" Disable modline
set nomodeline

" Other configurations.
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set spell
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set grepprg=grep\ -nH\ $*   " Needed for latex-suite
set mouse=a
let g:tex_flavor='latex'    " Needed for latex-suite
let g:ale_linters = {'python': ['flake8']}

" set nasm highlighting for .asm files
au BufRead,BufNewFile *.asm set filetype=nasm

