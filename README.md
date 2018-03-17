wx_workspace
============

<!-- vim-markdown-toc GFM -->
* [vim](#vim)
* [ag](#ag)
* [mycli](#mycli)
* [tldr](#tldr)
* [ncdu](#ncdu)
* [glances](#glances)

<!-- vim-markdown-toc -->

# vim

1. 使用[VundleVim](https://github.com/VundleVim/Vundle.vim) 管理vim插件
1. 只用一个.vimrc 即可管理一切
1. brew install macvim --with-override-system-vim

[issues](https://github.com/Valloric/YouCompleteMe/issues/2515)

# ag

替代了 `find ./ | xargs grep`

[the-silver-searcher](https://github.com/ggreer/the_silver_searcher)

# mycli

mysql 客户端 `pip install mycli`

查询结果的less 操作需要设置LESS 的环境变量 `export LESS="-XFR"`

refer: http://www.mycli.net/pager


# tldr

Too long, Don't read `pip install tldr`

# ncdu

更好看的du `yum install ncdu`

# glances

ENTER: filter
a: Sort process list automatically
c: Sort processes by CPU usage
i: Sort processes by I/O rate
m: Sort processes by MEM usage
p: Sort processes by name

http://glances.readthedocs.io/en/latest/cmds.html
