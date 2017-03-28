filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" add plugin
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
"Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/Mark'
Plugin 'vim-scripts/Tagbar'
Plugin 'bling/vim-airline'
Plugin 'Rykka/riv.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

" 语法高亮
syntax on

set nu
" 搜索词高亮"
set hls
" 设置tab变成了4个空格"
set tabstop=4
" 设定 << 和 >> 命令移动时的宽度为 4, 例: 3>> 从当前行之后3行向右移动4个宽度"
set shiftwidth=4
" 缩进用空格来表示"
set expandtab
" vim退出后在屏幕上保留被编辑文件的内容"
set  t_ti= t_te=
" 打开文件时，按照 viminfo 保存的上次关闭时的光标位置重新设置光标"
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 自动跳转到粘贴文本的最后
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" 对于py文件 每行80个字符位置提示
autocmd BufNewFile,BufRead *.py :set colorcolumn=100
" 对于py文件 tab, 行尾空 特殊字符提示
autocmd BufNewFile,BufRead *.py :set listchars=tab:->,trail:-,extends:#,nbsp:-
autocmd BufNewFile,BufRead *.py :set list
" 对于py文件 使用indent 方式代码折叠, 对应 za zM zR 快捷键
autocmd BufNewFile,BufRead *.py :set foldmethod=indent
" 默认不折叠
set nofoldenable
" 清除Q 快捷键
map Q <Nop>

"----------- NERDTree
" 让Tree把自己给装饰得多姿多彩漂亮点
let NERDChristmasTree=1
" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开） 
let NERDTreeMouseMode=2
map <F2> :silent! NERDTreeToggle<CR>

"----------- taglist
let g:tagbar_ctags_bin = '/Users/wx/bin/bin/ctags'
map <F8> :silent! TagbarToggle<CR>

"----------- vim-airline & vim-bufferline
set noshowmode
let g:bufferline_echo = 1
let g:airline#extensions#tabline#show_buffers = 1

" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
autocmd BufNewFile,BufRead *.py :set foldmethod=indent
" 启动 vim 时关闭折叠代码
set nofoldenable

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"----------- syntastic 设置
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_checkers=['pylint']
let g:syntastic_python_pylint_args='--disable=C0111,R0903,W0703,E1101,C0103,C0301'
let g:syntastic_go_checkers=['go']

"----------- vim-go
autocmd BufNewFile,BufRead *.go :set filetype=go
autocmd BufNewFile,BufRead *.go :set foldmethod=syntax
set nofoldenable
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = "goimports"
let g:rehash256 = 1
"let g:molokai_original = 1

autocmd BufNewFile,BufRead *.go :set colorcolumn=100
autocmd BufNewFile,BufRead *.go :set tabstop=4


"----------- YouCompleteMe
"let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1

autocmd BufNewFile,BufRead *.py nnoremap gd :YcmCompleter GoToDefinition<CR>
autocmd BufNewFile,BufRead *.py nnoremap gdc :YcmCompleter GoToDeclaration <CR>
autocmd BufNewFile,BufRead *.py nnoremap gr :YcmCompleter GoToReferences<CR>


let g:UltiSnipsExpandTrigger="<Right>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

