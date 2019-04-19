set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"my Vundle Bundle's here.
"
"Status line for vim
Plugin 'itchyny/lightline.vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'

"Vue component highlight
Plugin 'posva/vim-vue'

"Colorscheme
Plugin 'crusoexia/vim-monokai'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
""filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set background=dark
"mdkir -po ~/.vim/colors && cd ~/.vim/colors
"download https://github.com/crusoexia/vim-monokai
colorscheme monokai

filetype plugin indent on

"Allows use of mouse
set mouse=a
"System Clipboard
set clipboard=unnamed

"Enables normal backspace usage, I think?
set backspace=indent,eol,start
"Show line numbers
set number
"Show matches as typing
set incsearch
"set hlsearch
"Keeps status bar active and lets the Statusbar plugin handle the mode 
set laststatus=2
set noshowmode
"Show's the commands as entered
set showcmd
"Split the windows in a natural order
set splitbelow
set splitright

"Type the following to display list characters.
":set list!
set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
let &showbreak='↳ '
set cpoptions-=n
"Show listcars when visual mode is active.
aug my_visuallistchars
au!
au CursorMoved * if mode() =~# "[vV\<C-v>]" | set list | else | set nolist | endif
aug END

set encoding=utf-8
"Enable all Python syntax highlighting features
let python_highlight_all = 1
"PEP8 - Python Tabbing
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set noexpandtab |
    \ set autoindent |
    \ set fileformat=unix
"Mark white spaces as bad.
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"js, html, css tabs
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"CtrlP Settings
"r== nearest ancestor with a '.git'
"a==Like c but only cwd outside CtrlP is no a a direct ancestor of the
"directory of hte current file
"c==Directory of the current file
let g:ctrlp_working_path_mode = 'ra'

"Postva/vim-vue
"disable preprocessor checking
 let g:vue_disable_pre_processors=1

"Syntastic
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " Don't auto open/close location list
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode="passive"
let g:syntastic_enable_signs=0
nnoremap <F7> :SyntasticCheck<CR> :lopen<CR>

"Custom Commands
command! PrettyJson :%!python -m json.tool

"Custom Key Bindings
map <Enter> i<CR>
map <S-Enter> i<S-CR>
