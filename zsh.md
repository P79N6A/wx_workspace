OH-MY-ZSH
========

<!-- vim-markdown-toc GFM -->
* [ref github](#ref-github)
* [tips](#tips)
* [插件](#插件)
* [zsh load bash_completion](#zsh-load-bash_completion)

<!-- vim-markdown-toc -->

### ref github
1. [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### tips
1. 安装: 
    - sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
2. 参考 .zshrc(zshrc.tpl)
3. 插件 
    - plugins=(git colored-man-pages autojump)


### 插件
1. git 默认
2. colored-man-pages 有色彩的man 命令
3. autojump 
    - apt-get install autojump
    - brew install autojump
    - j xxx(xxx 目录名字)


### zsh load bash_completion

command not found : complete when using bash 

``` sh
# zsh have a bash completion script compatibility mode, you need to run :

autoload bashcompinit
bashcompinit

# https://github.com/eddiezane/lunchy/issues/57
```

1. [zsh 补全](https://segmentfault.com/a/1190000002994217)
