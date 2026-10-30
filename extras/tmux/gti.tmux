#!/usr/bin/env bash

# GTI Theme colors for Tmux

set -g mode-style "fg=#388bfd,bg=#6e7681"

set -g message-style "fg=#388bfd,bg=#6e7681"
set -g message-command-style "fg=#388bfd,bg=#6e7681"

set -g pane-border-style "fg=#6e7681"
set -g pane-active-border-style "fg=#388bfd"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#388bfd,bg=#1f2428"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1d2125,bg=#388bfd,bold] #S #[fg=#388bfd,bg=#1f2428,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#388bfd,bg=#1f2428] #{prefix_highlight} #[fg=#6e7681,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#388bfd,bg=#6e7681] %Y-%m-%d  %I:%M %p #[fg=#388bfd,bg=#6e7681,nobold,nounderscore,noitalics]#[fg=#1d2125,bg=#388bfd,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#388bfd,bg=#1f2428] #{prefix_highlight} #[fg=#6e7681,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#388bfd,bg=#6e7681] %Y-%m-%d  %H:%M #[fg=#388bfd,bg=#6e7681,nobold,nounderscore,noitalics]#[fg=#1d2125,bg=#388bfd,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#e1e7ed,bg=#1f2428"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#e1e7ed,bg=#1f2428"
setw -g window-status-format "#[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1f2428,bg=#6e7681,nobold,nounderscore,noitalics]#[fg=#388bfd,bg=#6e7681,bold] #I  #W #F #[fg=#6e7681,bg=#1f2428,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#FFAB70]#[bg=#1f2428]#[fg=#1f2428]#[bg=#FFAB70]"
set -g @prefix_highlight_output_suffix ""
