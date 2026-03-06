#!/bin/bash

#der
printf "%-15s | %-35s | %-50s\n" "Alias/Shortcut" "Command/Keybinding" "Description"
printf "%0.s-" {1..110}
echo ""

# Print tmux aliases
printf "%-15s | %-35s | %-50s\n" "ta" "tmux attach -t" "Attach new tmux session to already running named session"
#printf "%-15s | %-35s | %-50s\n" "tad" "tmux attach -d -t" "Detach named tmux session"
#printf "%-15s | %-35s | %-50s\n" "tds" "_tmux_directory_session" "Creates or attaches to a session for the current path"
printf "%-15s | %-35s | %-50s\n" "tkss" "tmux kill-session -t" "Terminate named running tmux session"
printf "%-15s | %-35s | %-50s\n" "tksv" "tmux kill-server" "Terminate all running tmux sessions"
printf "%-15s | %-35s | %-50s\n" "tl" "tmux list-sessions" "Displays a list of running tmux sessions"
#printf "%-15s | %-35s | %-50s\n" "tmux" "_zsh_tmux_plugin_run" "Start a new tmux session"
#printf "%-15s | %-35s | %-50s\n" "tmuxconf" "\$EDITOR \$ZSH_TMUX_CONFIG" "Open .tmux.conf file with an editor"
printf "%-15s | %-35s | %-50s\n" "ts" "tmux new-session -s" "Create a new named tmux session"

# Separator line
printf "%0.s-" {1..110}
echo ""

# Print tmux shortcuts
#printf "%-15s | %-35s | %-50s\n" "Prefix" "Ctrl + b" "Prefix key to trigger tmux commands"
#printf "%-15s | %-35s | %-50s\n" "Detach" "Ctrl + b, d" "Detach the current session and leave it running"
printf "%-15s | %-35s | %-50s\n" "New Window" "Ctrl + b, c" "Create a new tmux window"
printf "%-15s | %-35s | %-50s\n" "Switch Window" "Ctrl + b, n / p" "Move to next or previous window"
printf "%-15s | %-35s | %-50s\n" "Close Window" "Ctrl + b, &" "Close the current window"
printf "%-15s | %-35s | %-50s\n" "Split Pane V" "Ctrl + b, %" "Split window into vertical panes"
printf "%-15s | %-35s | %-50s\n" "Split Pane H" "Ctrl + b, \"" "Split window into horizontal panes"
printf "%-15s | %-35s | %-50s\n" "Switch Pane" "Ctrl + b, o" "Move between panes"
printf "%-15s | %-35s | %-50s\n" "Kill Pane" "Ctrl + b, x" "Close the current pane"
printf "%-15s | %-35s | %-50s\n" "Scroll Mode" "Ctrl + b, [" "Enter scroll mode to navigate pane history"
