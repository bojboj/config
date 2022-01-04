#!/usr/bin/env bash

set -g mode-style "fg=#90b5e0,bg=#1f2428"
set -g message-style "fg=#90b5e0,bg=#1f2428"
set -g message-command-style "fg=#90b5e0,bg=#1f2428"
set -g pane-border-style "fg=#444c56"
set -g pane-active-border-style "fg=#3b8eea"
set -g status "on"
set -g status-style "fg=#3b8eea,bg=#1f2428"
set -g status-left "#[fg=#1f2428,bg=#3b8eea] %H:%M "
set -g status-right "#[fg=#adc4dc,bg=#293d54] %a #[fg=#1f2428,bg=#3b8eea] %b %d "
setw -g window-status-separator ""
setw -g window-status-format ""
setw -g window-status-current-format "#[fg=#adc4dc,bg=#293d54] #{#{pane_current_command} #[fg=#90b5e0,bg=#1f2428] #{b:pane_current_path}}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'
