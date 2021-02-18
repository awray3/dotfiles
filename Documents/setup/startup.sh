#!/bin/zsh

tmux new-session -d -s jupyter

tmux send-keys -t jupyter "cd ~/Documents/my_unversioned_work" ENTER
tmux send-keys -t jupyter "jl" ENTER

