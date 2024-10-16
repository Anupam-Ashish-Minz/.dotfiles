#!/usr/bin/env bash

selected=`fzf < /home/anupam/.cache/projectlist`

dirname=`basename $selected | tr \. \-`
# echo $dirname

tmux attach -x -t $dirname || tmux new-session -c $selected -s $dirname
# if [[ $? -eq 0 ]]; then
#     exit 0
# fi
# tmux switch-client -t $dirname
# if [[ $? -eq 0 ]]; then
#     exit 0
# fi


    # && tmux attach -d -t $dirname \
    # || tmux new -c $selected -A -s $dirname

# # from .zshrc
#
# start_bookmarks() {
#     if [ ! -f /home/anupam/.cache/projectlist ]; then
#         set_projectdir
#     fi
#     selected=`fzf < /home/anupam/.cache/projectlist`
#     dirname=`basename $selected`
#     tmux switch-client -t $dirname
#     #if [[ $? -eq 0 ]]; then
#     #    exit 0
#     #fi
#     tmux new-session -c $selected -d -s $dirname &&
#     tmux switch-client -t $dirname || tmux new -c $selected -A -s $dirname
# }
# 
# bookmarks() {
#     if [ ! -f /home/anupam/.cache/projectlist ]; then
#         set_projectdir
#     fi
#     selected=`fzf < /home/anupam/.cache/projectlist`
#     cd $selected
# }
# 
# set_projectdir () {
#     find /home/anupam/work -type d -name '.git' -prune | sed 's/\.git//g' > /home/anupam/.cache/projectlist
# }
