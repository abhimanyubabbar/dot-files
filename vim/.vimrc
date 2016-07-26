set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'tpope/vim-surround'    " Added plugin for manipulating surround tags.
Plugin 'jelera/vim-javascript-syntax'  " Added for javascript syntaxes.
Plugin 'pangloss/vim-javascript'		" Javascript plugin in vim.
Plugin 'nathanaelkane/vim-indent-guides'	" Auto indentation in vim.
Plugin 'Raimondi/delimitMate'	" Auto complete quotes. brackets and parens.
Plugin 'fatih/vim-go' 		" Go Programming in vim.
Plugin 'airblade/vim-gitgutter' " Git Diffs and changes.
Plugin 'vim-airline/vim-airline' " Vim Airline
Plugin 'vim-airline/vim-airline-themes' " Vim Airline Status Theme
Plugin 'nsf/gocode', {'rtp': 'vim/'}	" Autocomplete daemon for the gocode.
Plugin 'scrooloose/nerdTree'	" Nerd Tree.
Plugin 'Valloric/YouCompleteMe'	" You Complete Me Tag.
Plugin 'scrooloose/syntastic'   " Syntax checking capability in vim.
Plugin 'flazz/vim-colorschemes' " Different colorschemes for vim.
Plugin 'tpope/vim-fugitive'     " Git plugin for vim
Plugin 'klen/python-mode'       " Python Mode for vim.
Plugin 'burnettk/vim-angular'   " Plugin for angular development in vim.
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'mxw/vim-jsx'            " Plugin for jsx highlighting.
Plugin 'ternjs/tern_for_vim'    " Javascript autocomplete and def plugin.
Plugin 'ervandew/supertab'      " Plugin for the tab completion
Plugin 'jlanzarotta/bufexplorer' " Plugin for exploring of the buffers.
Plugin 'kien/ctrlp.vim'         "Plugin for fuzzy finding of files.
Plugin 'mileszs/ack.vim'        " Plugin for searching the data in files
Plugin 'dag/vim2hs'             " Plugin for vim development.
Plugin 'Yggdroot/indentLine'    " Plugin for line indentation.
Plugin 'leafgarland/typescript-vim'
Plugin 'SirVer/ultisnips'   " Plugin to load snippets in vim.
Plugin 'honza/vim-snippets' " Plugin for load snippets of code.


call vundle#end()            " require


" All of your Plugins must be added before the following line
filetype plugin indent on    " required
set omnifunc=syntaxcomplete#Complete
set omnifunc=csscomplete#CompleteCSS
let g:EclimCompletionMethod = 'omnifunc'

" Showing line numbers.
set number

" Adding powerline fonts and symbols to the airline

" Setting the encoding of the symbols.
set encoding=utf-8

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jay'


" Commands for the go plugin.
" <leader> is \ (backslash)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>i <Plug>(go-install)

" Enable the neocomplete feature in the vim.

let g:neocomplete#enable_at_startup = 1
syntax enable

let g:go_disable_autoinstall = 0

" Highlight for go.
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" go imports instead of go fmt
let g:go_fmt_command = "goimports"
" fmt on autosave
let g:go_fmt_autosave = 1

" Settings for syntastic : BEGIN
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
" Settings for syntastic : END

" Syntastic with golang
let g:syntastic_go_checkers = ['go', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

map <C-n> :NERDTreeToggle<CR>

autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>

" Resetting the tab spaces in vim.
set tabstop=4       " Setting the tab spaces to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces"

" Setting the tab and spaces to 2 in javascript.
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Adding the keyremapping to save.
inoremap <F3> <c-o>:w<cr>

" Setting the cursor line.
set cursorline

let g:jsx_ext_required = 0  " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']   " Let the syntastic fallback to eslint for javascript.

" Setting the colorscheme here.
syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" Setting the search highlighting.
set hlsearch
" Setting space to turn of highlighting for currently searched item
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Solving the issue of the airline not showing up on a single open file.
set laststatus=2
autocmd BufNewFile,BufRead *.json set ft=javascript

" Python Plugin Modifications. + Enabling code folding in other file types.
set nofoldenable    " disable folding"
set foldmethod=syntax
set foldnestmax=10
set foldlevel=0

let g:pymode_rope_goto_definition_bind = "gd"
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_motion = 1
" Mapping for the file finder.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Mapping for the haskell plugin.
let g:haskell_conceal_wide = 1 " Display the unicode characters in vim.

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
