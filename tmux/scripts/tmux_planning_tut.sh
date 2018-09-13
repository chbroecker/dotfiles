#!/bin/sh
tmux has-session -t planning_tut
if [ $? != 0 ]; then
	tmux new-session -s planning_tut -n 'roscore|mongodb|sim' -d
	tmux send-keys -t planning_tut 'roscore' C-m
	tmux split-window -h -t planning_tut
	tmux select-pane -L
	tmux split-window -v -t planning_tut
	sleep 0.8
	tmux send-keys -t planning_tut:1.1 'roslaunch mongodb_store mongodb_store.launch db_path:=`rospack find planning_tutorial`/db' C-m
	tmux select-pane -R
	sleep 0.5
	tmux send-keys -t planning_tut:1.2 'roslaunch strands_morse tsc_fast_morse.launch' C-m
	tmux new-window -t planning_tut -n 'nav|rviz'
	tmux send-keys -t planning_tut 'roslaunch planning_tutorial tsc_navigation.launch' C-m
	tmux split-window -h -t planning_tut
	tmux send-keys -t planning_tut 'rviz -d `rospack find planning_tutorial`/plan_tut.rviz' C-m
	tmux new-window -t planning_tut -n 'mep|mdp'
	tmux send-keys -t planning_tut 'rosrun topological_navigation manual_edge_predictions.py `rospack find planning_tutorial`/maps/plan_tut_edges.yaml' C-m
	sleep 0.5
	tmux split-window -h -t planning_tut
	tmux send-keys -t planning_tut 'roslaunch mdp_plan_exec mdp_plan_exec_extended.launch' C-m
	tmux new-window -t planning_tut -n 'dev'
	tmux send-keys -t planning_tut 'rosrun plannin_tutorial ltl_nav.py'
	tmux split-window -h -t planning_tut
	tmux send-keys -t planning_tut 'vim `rospack find planning_tutorial`/scripts/ltl_nav.py' C-m
	tmux select-pane -L
fi
tmux attach -t planning_tut
