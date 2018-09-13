#!/bin/sh
tmux has-session -t hsrb_sim
if [ $? != 0 ]; then
	tmux new-session -s hsrb_sim -n 'roscore|sim' -d
	tmux send-keys -t hsrb_sim 'roscore' C-m
	sleep 1
	tmux split-window -h -t hsrb_sim
	tmux send-keys -t hsrb_sim 'roslaunch hsrb_gazebo_launch hsrb_megaweb2015_world.launch' C-m
	tmux new-window -t hsrb_sim -n 'sim_mode'
	tmux send-keys -t hsrb_sim 'sim_mode' C-m
fi
tmux attach -t hsrb_sim
