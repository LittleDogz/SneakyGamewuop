player_x = obj_player.x;
player_y = obj_player.y;


if (point_direction(x,y, player_x, player_y) < 200) and abs(angle_difference(facing,point_direction(x,y,obj_player.x,obj_player.y))) < cone
and !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1)
{

	path_end();
	mp_potential_step_object(player_x, player_y, 2, obj_wall)
	
} else if (path_index != path0) {
	
	mp_potential_step_object(start_x, start_y, 2, obj_wall);
	
	if (abs(x - start_x) < 2 && abs(y - start_y) < 2) {
		path_start(path0, 2, path_action_reverse, false)
	}

}