set number
set tabstop=4
set nocompatible              " required
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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 0
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

Plugin 'ssh://code@code.int.uberatc.com/diffusion/VIMHIDL/vim-hidl-ftplugin.git'
Plugin 'flazz/vim-colorschemes'
" Bundle 'klen/python-mode'
" let g:pymode_rope_lookup_project = 0
" let g:pymode_rope = 1
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'
" let g:pymode_lint = 1
" let g:pymode_lint_checker = "pyflakes,pep8"
" let g:pymode_lint_write = 1
" let g:pymode_virtualenv = 1
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'
" let g:pymode_syntax = 1
" let g:pymode_options_colorcolumn = 0
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
" let g:pymode_folding = 0
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
"---------- NERDTree -----------
Plugin 'scrooloose/nerdtree'
map <F10> :NERDTreeMirror<CR>
map <F10> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25
Plugin 'Yggdroot/indentLine'
let g:indentLine_char='|'
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1
call vundle#end()            " required
call glaive#Install()
Glaive codefmt
    \ plugin[mappings]=',='
    \ clang_format_executable='/opt/clang+llvm-3.8.0/bin/clang-format'
    \ clang_format_style='file'
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
augroup autoformat
    autocmd!
    autocmd FileType cpp AutoFormatBuffer
augroup END
set autoindent
set expandtab
set ts=4 sw=4 sts=4
syntax enable
set backspace=indent,eol,start
set textwidth=300
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
