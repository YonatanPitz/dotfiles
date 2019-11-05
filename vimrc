set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
source ~/.vundle_path
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"    Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"    Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-commentary'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
" colorscheme pablo
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set wrapscan
set hlsearch
nnoremap <C-t> :tabnew<CR>
nnoremap <C-k> :tabp<CR>
nnoremap <C-l> :tabn<CR>
map <Leader>h  :nohl<CR>

" Solarized
syntax enable
" set background=light
set background=dark
let g:solarized_termcolors=256
" let g:solarized_termcolors=16
colorscheme solarized

" EasyMotion
let g:EasyMotion_smartcase = 1
nmap ss <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" map <Leader> <Plug>(easymotion-prefix)

" CScope maps
" s: Find this C symbol
" g: Find this definition
" d: Find functions called by this function
" c: Find functions calling this function
" t: Find this text string
" f: Find this file
" i: Find files #including this file
" nmap <C-@>s :lcs find s <C-R>=expand("<cword>")<CR><CR>  
" nmap <C-@>g :lcs find g <C-R>=expand("<cword>")<CR><CR>  
" nmap <C-@>c :lcs find c <C-R>=expand("<cword>")<CR><CR>  
" nmap <C-@>t :lcs find t <C-R>=expand("<cword>")<CR><CR>  
" nmap <C-@>e :lcs find e <C-R>=expand("<cword>")<CR><CR>  
" nmap <C-@>f :lcs find f <C-R>=expand("<cfile>")<CR><CR>  
" nmap <C-@>i :lcs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" nmap <C-@>d :lcs find d <C-R>=expand("<cword>")<CR><CR>

" add any cscope database in current directory
" if filereadable("cscope.out")
"     cs add cscope.out  
" " else add the database pointed to by environment variable 
" elseif $CSCOPE_DB != ""
"     " echo "TEST"
"     cs add $CSCOPE_DB
" endif
