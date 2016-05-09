TMUX
========
### 基本说明
配置文件  ~/.tmux.conf

### 快捷键
prefix : ctrl + b<br>

1. Session
    - tmux new -s <会话名称> #新建会话
    - tmux ls #列出所有的会话
    - tmux a -t <目标会话名> # 链接会话
    - prefix d #退出Session
    - prefix $ #重命名当前会话
    - prefix s #会话列表

2. Windows
    - prefix c #新建窗口
    - prefix n #下一个窗口
    - prefix p #上一个窗口
    - prefix space #切换到上一个活动的窗口
    - prefix & #关闭一个窗口
    - prefix , #更改窗口名称

3. Pane
    - prefix % #类似 vim vsp
    - prefix " #类似 vim sp
    - exit #退出Pane
    - prefix o #窗格切换
    - prefix hjkl #窗格切换(.tmux.conf设置)

4. Other
    - prefix r #重载配置, conf设置
    - prefix [ #进入复制模式，在复制模式中 q 即可退出
    - 复制模式，使用vi移动方式(hjkl, v), conf设置


### Tips
1. 配色问题
    - 有些改善，但是zsh 中每次命令输出都会带着输入的命令一起输出.
    - refer: [解决tmux支持color 256的问题](http://www.wutianqi.com/?p=3681)
