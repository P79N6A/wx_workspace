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
