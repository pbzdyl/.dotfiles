set nocompatible 
filetype off

imap jj <Esc>
imap ii <Esc>

" paredit
let g:paredit_shortmaps = 1
let g:paredit_smartjump = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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
