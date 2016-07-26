" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi
" Navigate between display lines
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj
noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End>  <C-o>g<End>
" copy current files path to clipboard
nmap cp :let @+ = expand("%") <cr>

" ,f to format code, requires formatters: read the docs
noremap <leader>f :Autoformat<CR>
noremap <leader>TM :TableModeToggle<CR>
" exit insert, dd line, enter insert
inoremap <C-d> <esc>ddi
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just wap the mapping
" nnoremap : ;
" give it a try and you will like it
nnoremap ; :
inoremap <c-f> <c-x><c-f>

" Key binding for invoking the Unite grep functionality
nnoremap <space>/ :Unite grep:.<cr>
nnoremap \be :Unite buffer<cr>

" General Productivity Key Bindings
vmap < <gv
vmap > >gv
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <c-/> :TComment<cr>

" Highlight
noremap <space> :noh<cr>
