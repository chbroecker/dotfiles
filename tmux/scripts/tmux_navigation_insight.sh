#!/bin/sh
tmux has-session -t explain_nav
if [ $? != 0 ]; then
	tmux new-session -s explain_nav -n 'roscore|mongodb|sim' -d
	tmux send-keys -t explain_nav 'roscore' C-m
	sleep 1
	tmux split-window -h -t explain_nav
	tmux send-keys -t explain_nav 'roslaunch hsrb_gazebo_launch hsrb_apartment_no_objects_world.launch'
	#tmux send-keys -t explain_nav 'rviz -d `rospack find navigation_insight`/data/rviz/soma.rviz' C-m
	tmux select-pane -L
	tmux split-window -v -t explain_nav
	tmux send-keys -t explain_nav 'roslaunch mongodb_store mongodb_store.launch db_path:=`rospack find navigation_insight`/db' C-m
	tmux new-window -t explain_nav -n 'soma'
	tmux send-keys -t explain_nav 'roslaunch soma_manager soma_local.launch' C-m
	tmux send-keys -t explain_nav '1' C-m
	tmux split-window -h -t explain_nav
	tmux send-keys -t explain_nav 'rosrun soma_roi_manager soma_roi_node.py test' C-m
	tmux new-window -t explain_nav -n 'topmap'
	#tmux send-keys -t explain_nav 'rosrun topological_navigation map_manager.py apartment_no_objects' C-m
	tmux send-keys -t explain_nav 'roslaunch topological_navigation minimal_topological_navigation.launch map:=apartment_no_objects' C-m
	#tmux split-window -h -t explain_nav
	#tmux send-keys -t explain_nav 'roslaunch topological_rviz_tools strands_rviz_topmap.launch map:=`rospack find navigation_insight`/data/maps/apartment_no_objects_map.yaml topmap:=apartment_no_objects db_path:=`rospack find navigation_insight`/db standalone:=true'
fi
tmux attach -t explain_nav
