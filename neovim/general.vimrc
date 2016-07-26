
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Cursor shape to change to pipe in insert mode
" Setting colors for colorscheme use
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Point neovim to a python interpretor
let g:python_host_prog='/usr/bin/python'

" Currently needed for neovim paste issue
set pastetoggle=<f6>
set nopaste
" Let airline tell me my status
set noshowmode
set noswapfile
filetype on
set relativenumber number
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
" block select not limited by shortest line
set virtualedit=
set wildmenu
set laststatus=2
"set colorcolumn=100
set wrap linebreak nolist
set wildmode=full
" leader is ,
let mapleader = ','
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
autocmd BufReadPost *
			\ if line("'\"") > 0 && line ("'\"") <= line("$") |
			\   exe "normal! g'\"" |
			\ endif
" center buffer around cursor when opening files
autocmd BufRead * normal zz
