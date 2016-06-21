#-- base settings --#
# 设置终端颜色为256色  
set -g default-terminal "screen-256color"
set -g base-index 1
set -g pane-base-index 1

# bind a reload key
bind r source-file ~/.tmux.conf \; display-message "Config reloaded.."

# Use vim keybindings in copy mode
setw -g mode-keys vi
# start selecting text typing 'v' key (once you are in copy mode)
bind-key -t vi-copy v begin-selection

# 阻止tmux 自动改Windows 名字
set-option -g allow-rename off

# Remap window(pane?) navigation to vim
# 用 vim 的方式在窗格间移动光标
unbind-key j
bind-key j select-pane -D
unbind-key k
bind-key k select-pane -U
unbind-key h
bind-key h select-pane -L
unbind-key l
bind-key l select-pane -R

# 状态栏
# 颜色
set -g status-bg black
set -g status-fg white
# 对齐方式
set-option -g status-justify centre
# 左下角
set-option -g status-left '#[bg=black,fg=green][#[fg=cyan]#S#[fg=green]]'
set-option -g status-left-length 20
# 窗口列表
setw -g automatic-rename on
set-window-option -g window-status-format '#[dim]#I:#[default]#W#[fg=grey,dim]'
set-window-option -g window-status-current-format '#[fg=cyan,bold]#I#[fg=blue]:#[fg=cyan]#W#[fg=dim]'
# 右下角
set -g status-right '#[fg=green][#[fg=cyan]%Y-%m-%d#[fg=green]]'

# 开启用鼠标拖动调节pane的大小（拖动位置是pane之间的分隔线）
setw -g mouse-resize-pane on
# 开启用鼠标点击pane来激活该pane
setw -g mouse-select-pane on
# 开启用鼠标点击来切换活动window（点击位置是状态栏的窗口名称）
setw -g mouse-select-window on
# 开启window/pane里面的鼠标支持（也即可以用鼠标滚轮回滚显示窗口内容，此时还可以用鼠标选取文本）
# 系统的拷贝缓冲，而不是 tmux的拷贝缓冲（shift + 鼠标圈选）
setw -g mode-mouse on
