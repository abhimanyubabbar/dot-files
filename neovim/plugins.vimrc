
" Setting the colorscheme
syntax on
" colorscheme solarized
colorscheme OceanicNext
set background=dark

" Settings for vim-go plugin
" 1 : Syntax Hightlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"


" Snipmate key bindings 
" let g:snips_trigger_key = '<C-CR>'

" let g:syntastic_go_checkers = ['go', 'errcheck']
" let g:syntastic_javascript_checkers = ['eslint']
"
" " Settings for syntastic plugin
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" Settings for the unit plugin
let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_prompt='❯ '
" The command ag can be installed -> apt-get install silversearcher-ag
let g:unite_source_rec_async_command =['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'lib']

" setting the default functionality to grep using unite
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
  \ '--line-numbers --nocolor --nogroup --hidden --ignore '
let g:unite_source_grep_recursive_opt = ''

nnoremap <silent> <c-p> :Unite -auto-resize -start-insert -direction=botright file_rec/neovim<CR>
nnoremap <silent> <leader>c :Unite -auto-resize -start-insert -direction=botright colorscheme<CR>
nnoremap <silent> <leader>u :call dein#update()<CR>
nnoremap <silent> <leader>m :Unite -auto-resize -start-insert -direction=botright redismru<CR>

nnoremap <silent> <leader>o :Unite -winwidth=45 -vertical -direction=botright outline<CR>
nnoremap <leader>I :Unite -no-split -vertical -direction=topleft issue:github:driftyco/
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()

function! s:unite_settings() "{{{
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction "}}}

" Setting mappings for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Neomake configuration to run linting on every write
autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2
" let g:neomake_verbose=3


let g:neomake_go_maker = {
  \ 'exe':'errcheck',
  \ 'errorformat': '%f:%l:%c: %m'
  \ }

let g:neomake_js_maker = {
  \ 'exe':'eslint',
  \ 'args':['-f', 'compact', '.'],
  \ 'errorformat': '%f: line %l\, col %c\, %m',
  \ }

let g:neomake_jsx_maker = {
  \ 'exe':'eslint',
  \ 'args':['--ext','jsx','-f','compact','.'],
  \ 'errorformat': '%f: line %l\, col %c\, %m',
  \ }

" Neomake makers for different syntax files.
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

let g:neomake_go_enabled_makers = []

" Set mappings to run if we want to run full project makes.

" Execute a full build of golang project
noremap fbg :Neomake! go<CR> 

" Execute full build of the js project
noremap fbjs :Neomake! js<CR>

" Execute full build of jsx project
noremap fbjsx :Neomake! jsx<CR>

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

" Key bindings for Ternjs: YouCompleteMe
let g:tern_map_keys=1
