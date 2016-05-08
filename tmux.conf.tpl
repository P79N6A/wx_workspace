# bind a reload key
bind r source-file ~/.tmux.conf \; display-message "Config reloaded.."

# Use vim keybindings in copy mode
setw -g mode-keys vi
# start selecting text typing 'v' key (once you are in copy mode)
bind-key -t vi-copy v begin-selection
