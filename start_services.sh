#!/bin/bash
SESSION="log4shell"

tmux new-session -d -s $SESSION -n main
tmux send-keys -t $SESSION "podman-compose up" C-m
sleep 1
tmux split-window -h -t $SESSION
tmux send-keys -t $SESSION "./log4shelltools/run-http-container.sh" C-m
tmux split-window -v -t $SESSION
tmux send-keys -t $SESSION "./log4shelltools/run-ldap-container.sh" C-m

tmux attach -t $SESSION
