#bind -n M-Down select-pane -D
# Move around panes vim style\
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Resize Panes Key Bindings with alt key
# Fix this for Linux but works on Mac
bind-key M-7 resize-pane -t 1 -x 90
bind-key M-8 resize-pane -t 1 -x 60
bind-key M-9 resize-pane -t 1 -x 30
bind-key M-0 resize-pane -t 0 -x 30

# don't rename windows automatically
set-option -g allow-rename off

# Set the title bar
set -g set-titles on
#set -g set-titles-string '#(whoami) :: #h :: #(curl ipecho.net/plain;echo)'
set -g set-titles-string '#(whoami) :: #S :: #W :: #h ::::  #(curl ipecho.net/plain;echo)'
#set-title-option -g title-status-current-bg cyan

set -g default-terminal "screen-256color"
set -g base-index 1
set -g history-limit 30000
set -g status-right-length 150
#set -g status-left ""
#set -g status-right "[fg-green] %m-%d-%Y %H:%M #(whoami)@#DOMAIN"
set -g aggressive-resize on

# Set status bar
set -g status-bg black
set -g status-fg white
#set -g status-utf8 on

set -g status-interval 5
set -g status-left-length 90
set -g status-right-length 60

set-window-option -g window-status-current-bg red
#set -g status-left "#[fg=Green]#(whoami)#[fg=white]::#[fg=blue]#(hostname -s)#[fg=white]::#[fg=yellow]#(curl ipecho.net/plain;echo)"
set -g status-left "#[fg=Green]#(whoami)#[fg=white]::#[fg=blue]#(hostname -s)#[fg=white]::#[fg=yellow]#(curl ipecho.net/plain;echo) ::> "
set -g status-justify left
set -g status-right '#[fg=Cyan]#S #[fg=white]%a %d %b %R'

# set Vi bindings in copy mode
set-option -g status-keys vi
set-window-option -g mode-keys vi

# Set v to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"
