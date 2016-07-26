" This file is a place for keeping track of all the
" general plugins in the system.

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Productivity tools for general improvement.
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/vim-easy-align'
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'ujihisa/unite-colorscheme'
Plug 'junkblocker/unite-codesearch'
Plug 'troydm/asyncfinder.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}


" Plugins for syntax
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/jsdoc-syntax.vim', {'for':['javascript', 'typescript']}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
" Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'

" Making vim awesome for node
Plug 'moll/vim-node'

" Productivity plugins for working with front end dev
Plug 'hail2u/vim-css3-syntax', {'for':['css','scss']}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'tpope/vim-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'Yggdroot/indentLine'
Plug 'valloric/MatchTagAlways', {'for': 'html'}

" Productivity plugins for git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Productivity tools for python/ go
Plug 'tmhedberg/SimpylFold', {'for': 'python'}
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Any valid git URL is allowed

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Using a non-master branch


" Plugin for themes in general
Plug 'mhartington/oceanic-next'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-bufferline'

" Add plugins to &runtimepath
call plug#end()
