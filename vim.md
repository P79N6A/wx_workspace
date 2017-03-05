VIM
========

### 初始化
1. setup Vundle
> git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
2. mv .vimrc ~/.vimrc
3. Launch vim and run :PluginInstall

### tips
#### 1. github doc
[Vundle](https://github.com/gmarik/Vundle.vim)
> " Brief help

> > " :PluginList       - lists configured plugins

> > " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate

> > " :PluginSearch foo - searches for foo; append `!` to refresh local cache

> > " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

> > "

> > " see :h vundle for more details or wiki for FAQ

> > " Put your non-Plugin stuff after this line

#### 2. vim version
> mac升级了vim 到7.4(brew)
>
> Compiling YCM
> alias vim= 7.4版本

#### 插件列表
1. Vundle.vim
    - 最基础插件 vimrc中使用
2. Mark:
    - 同时高亮多个单词
    - [vim-scripts/Mark](https://github.com/vim-scripts/Mark)
    - <leader>mark 标记光标下的单词。ps：<leader> 由mapleader确定，默认为\
    - *\m 标记; \n 清除; * 来回查找标记*
3. Tagbar
    - 函数列表插件
    - 因为mac自带的ctags程序不是exuberant ctags,所以使用时会出现问题,需要自己下载ctags编译安装到非/usr/bin 目录下
    - [vim-scripts/Tagbar.git](https://github.com/vim-scripts/Tagbar.git)
4. YouCompleteMe
    - [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git)
    - 比较复杂
    - py 绑定了gd, gdc, gr 三个快捷键
5. nerdtree
    - A tree explorer plugin for vim.
    - [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree.git)
6. tabular
    - 对齐插件
    - EX: :Tabularize/=
    - [godlygeek/tabular](https://github.com/godlygeek/tabular.git)
7. vim-airline
    - 底部显示一个状态条
    - [bling/vim-airline](https://github.com/bling/vim-airline.git)
8. vim-sensible
    - 包含了一些基本的Vim设置，大部分比较实用
    - [tpope/vim-sensible™](https://github.com/tpope/vim-sensible.git)
9. syntastic
    - 语法检查
    - python 使用pylint
    - [Syntastic和pylint的安装配置](http://astraylinux.com/2014/03/05/vim-syntastic-and-pylint/)
    - 忽略某些错误参考 [pylint error code](http://pylint-messages.wikidot.com/all-codes)
10. ultisnips & vim-snippets
    - 代码片段
    - 自己的代码, (~/.vim/UltiSnips)
    - [syntax](https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt)


### shortcut

- vimdiff 中使用dp (diff "put") 把一个差异点中当前文件的内容复制到另一个文件里
