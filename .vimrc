set nocompatible
filetype off

set backup
set swapfile
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp

set wildmenu
set wildmode=full

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:▸\ ,eol:¬
set list
set backspace=indent,eol,start

imap jj <Esc>
imap ii <Esc>

" paredit
"let g:paredit_shortmaps=1
let g:paredit_smartjump=1

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
autocmd BufRead,BufNewFile build.boot setlocal filetype=clojure
autocmd Filetype gitcommit setlocal spell textwidth=72

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-fireplace'
Plugin 'dgrnbrg/vim-redl'
Plugin 'rkneufeld/vim-boot'
Plugin 'paredit.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'lsdr/monokai'
Plugin 'tomasr/molokai'
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'sjl/badwolf'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'w0ng/vim-hybrid'
Plugin 'jnurmine/Zenburn'
Plugin 'nanotech/jellybeans.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'gberenfield/cljfold.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'godlygeek/tabular'

call vundle#end()

filetype plugin indent on
syntax on

" Line numbers
set relativenumber
set number

" folding
"set nofoldenable
set foldlevelstart=99

" Splits
set splitbelow
set splitright

" airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" redl
let g:redl_use_vsplit = 1

" theme
set background=dark
"colorscheme solarized
colorscheme hybrid
let g:airline_theme = 'hybridline'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:promptline_preset = {
        \'a' : [ promptline#slices#cwd() ],
        \'b' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#git_status(), promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ] }
