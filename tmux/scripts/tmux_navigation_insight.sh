#!/bin/sh
tmux has-session -t nav_insight
if [ $? != 0 ]; then
	tmux new-session -s nav_insight -n 'roscore|mongodb|sim' -d
	tmux send-keys -t nav_insight 'roscore' C-m
	sleep 1
	tmux split-window -h -t nav_insight
	tmux send-keys -t nav_insight 'roslaunch hsrb_gazebo_launch hsrb_apartment_world.launch'
	#tmux send-keys -t nav_insight 'rviz -d `rospack find navigation_insight`/data/rviz/soma.rviz' C-m
	tmux select-pane -L
	tmux split-window -v -t nav_insight
	tmux send-keys -t nav_insight 'roslaunch mongodb_store mongodb_store.launch db_path:=`rospack find navigation_insight`/db' C-m
	tmux new-window -t nav_insight -n 'soma'
	tmux send-keys -t nav_insight 'roslaunch soma_manager soma_local.launch' C-m
	tmux send-keys -t nav_insight '1' C-m
	tmux split-window -h -t nav_insight
	tmux send-keys -t nav_insight 'rosrun soma_roi_manager soma_roi_node.py test' C-m
	tmux new-window -t nav_insight -n 'topmap'
	#tmux send-keys -t nav_insight 'rosrun topological_navigation map_manager.py apartment_no_objects' C-m
	tmux send-keys -t nav_insight 'roslaunch topological_navigation minimal_topological_navigation.launch map:=apartment_no_objects' C-m
	#tmux split-window -h -t nav_insight
	#tmux send-keys -t nav_insight 'roslaunch topological_rviz_tools strands_rviz_topmap.launch map:=`rospack find navigation_insight`/data/maps/apartment_no_objects_map.yaml topmap:=apartment_no_objects db_path:=`rospack find navigation_insight`/db standalone:=true'
	sleep 2.5
	tmux new-window -t nav_insight -n 'navigation_insight'
	tmux send-keys -t nav_insight 'rosrun navigation_insight navigation_insight_node.py' C-m
	tmux split-window -h -t nav_insight
	tmux send-keys -t nav_insight 'rosrun navigation_insight point_in_roi_service.py' C-m
	tmux new-window -t nav_insight -n 'rviz|robo3t'
	tmux send-keys -t nav_insight 'rviz -d navigation_insight/data/rviz/soma.rviz'
	tmux split-window -h -t nav_insight
	tmux send-keys -t nav_insight './Programs/robo3t-1.2.1-linux-x86_64-3e50a65/bin/robo3t' 
fi
tmux attach -t nav_insight
