#!/usr/bin/env bash

# Style: nightfox
set -g status "on"
setw -g window-status-separator ""
setw -g window-status-format ""
set -g mode-style "fg=#719cd6,bg=#3b4261"
set -g message-style "fg=#719cd6,bg=#3b4261"
set -g message-command-style "fg=#719cd6,bg=#3b4261"
set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#719cd6"
set -g status-style "fg=#719cd6,bg=#131A24"
set -g status-left "#[fg=#393b44,bg=#719cd6] %H:%M "
set -g status-right "#[fg=#719cd6,bg=#3b4261] %a #[fg=#393b44,bg=#719cd6] %b %d "
setw -g window-status-current-format "#[fg=#719cd6,bg=#3b4261] #{#{pane_current_command} #[fg=#aeafb0,bg=#131A24] #{b:pane_current_path}}"
