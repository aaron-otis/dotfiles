local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'neovim/nvim-lsp'
--Plug 'liuchengxu/vista.vim'
Plug('averms/black-nvim', {['do'] = ':UpdateRemotePlugins'})

vim.call('plug#end')

--" True Color Support if it's avaiable in terminal
--if has("termguicolors")
--    set termguicolors
--endif
vim.opt.termguicolors = true

--if has("gui_running")
--  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
--endif


--let g:deoplete#enable_at_startup = 1
--call deoplete#custom#source('_', 'max_menu_width', 80)

-- Coloring.
--vim.opt.syntax = on
--vim.opt.colorscheme = vividchalk

vim.g.python3_host_prog = vim.fn.expand("/usr/bin/python3")

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.cmd([[
colorscheme vividchalk
set nocompatible
filetype plugin indent on
set spell
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set grepprg=grep\ -nH\ $*   " Needed for latex-suite
set mouse=a
au BufRead,BufNewFile *.asm set filetype=nasm " set nasm highlighting for .asm files
]])

vim.g.tex_flavor='latex'        -- Needed for latex-suite
--let g:ale_linters = {'python': ['flake8'], 'rust': ['rls']}
--let g:ale_fixers = {'rust': ['rustfmt'],}
--set completeopt=menu,menuone,preview,noselect,noinsert
--let g:ale_completion_enabled = 1

--let g:airline#extensions#ale#enabled = 1


--if executable('pyls')
--    " pip install python-language-server
--    au User lsp_setup call lsp#register_server({
--        \ 'name': 'pyls',
--        \ 'cmd': {server_info->['pyls']},
--        \ 'allowlist': ['python'],
--        \ })
--endif
--if executable('racket-language-server')
--    " raco pkg install racket-language-server
--    au User lsp_setup call lsp#register_server({
--        \ 'name': 'racket-language-server',
--        \ 'cmd': {server_info->['racket-language-server']},
--        \ 'allowlist': ['racket'],
--        \ })
--endif
--set foldmethod=expr
--  \ foldexpr=lsp#ui#vim#folding#foldexpr()
--  \ foldtext=lsp#ui#vim#folding#foldtext()

-- setup rust_analyzer LSP (IDE features)
--lua require'nvim_lsp'.rust_analyzer.setup{}

-- Use LSP omni-completion in Rust files
--autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc

-- rustfmt on write using autoformat
--autocmd BufWrite * :Autoformat

--TODO: clippy on write
--autocmd BufWrite * :Autoformat

--nnoremap <leader>c :!cargo clippy
