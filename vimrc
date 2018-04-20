set number
set tabstop=4
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'klen/python-mode'
" Python-mode
"Activate rope
" " Keys: 按键：
" " K             Show python docs 显示Python文档
" " <Ctrl-Space>  Rope autocomplete  使用Rope进行自动补全
" " <Ctrl-c>g     Rope goto definition  跳转到定义处
" " <Ctrl-c>d     Rope show documentation  显示文档
" " <Ctrl-c>f     Rope find occurrences  寻找该对象出现的地方
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled) 断点
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" "            跳转到前一个/后一个类或函数
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
" "              跳转到前一个/后一个类或方法
 let g:pymode_rope = 1
 " Documentation 显示文档
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
" “Linting 代码查错，=1为启用
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
" " Support virtualenv
let g:pymode_virtualenv = 1
" " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" " syntax highlighting 高亮形式
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" " Don't autofold code 禁用自动代码折叠
let g:pymode_folding = 0
syntax enable
set ts=4
set expandtab
set shiftwidth=4
set cursorline
set showmatch
colorscheme desert
let python_highlight_all = 1
""""""""""""""""""""""
    "Quickly Run
"""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python2.7 %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
            exec "!go build %<"
            exec "!time go run %"
elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!firefox %.html &"
endif
endfunc
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
vnoremap <space> zf

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
"==========indident line=============="
Plugin 'Yggdroot/indentLine'
"缩进指示线"
let g:indentLine_char='c'
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1


