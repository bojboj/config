#!/usr/bin/env bash

set -g mode-style "fg=#81a1c1,bg=#4b5668"
set -g message-style "fg=#81a1c1,bg=#4b5668"
set -g message-command-style "fg=#81a1c1,bg=#4b5668"
set -g pane-border-style "fg=#4b5668"
set -g pane-active-border-style "fg=#81a1c1"
set -g status-style "fg=#81a1c1,bg=#232831"
set -g status "on"
setw -g window-status-separator ""
setw -g window-status-format ""
set -g status-left "#[fg=#393b44,bg=#81a1c1] %H:%M "
set -g status-right "#[fg=#81a1c1,bg=#4b5668] %a #[fg=#393b44,bg=#81a1c1] %b %d "
setw -g window-status-current-format "#[fg=#81a1c1,bg=#4b5668] #{#{pane_current_command} #[fg=#aeafb0,bg=#232831] #{b:pane_current_path}}"
