/// @description Insert description here
// You can write your code in this editor

	//niew tracking
	var enemy_direction = point_direction(x, y,obj_neiw.x,obj_neiw.y);
	

//Neiw chase
if distance_to_object(obj_neiw) < neiw
and !collision_line(x,y,obj_neiw.x,obj_neiw.y,obj_wall,1,1)
   {
	path_end();
	mp_potential_step(neiwseenx, neiwseeny, 0, obj_wall)
	image_angle = enemy_direction;
	neiwseenx = obj_neiw.x;
	neiwseeny = obj_neiw.y;

	
} else if (path_index != path2) {
	
	mp_potential_step(start_x, start_y, 2, obj_wall);

	if (abs(x - start_x) < 2 && abs(y - start_y) < 2) {
		path_start(path2, 1, path_action_restart, false)
		image_angle = 0;
	}

}