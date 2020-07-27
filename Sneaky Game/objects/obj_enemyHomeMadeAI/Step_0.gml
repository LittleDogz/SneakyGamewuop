seenx = obj_player.x;
seeny = obj_player.y;


//sneakmode
if (global.sneakmode = true)
   {
	playerdir = 80
   }
else
   {
	playerdir = 200
   }


//image tracking
	var enemy_direction = point_direction(x, y,obj_player.x,obj_player.y);


if distance_to_object(obj_player) < playerdir
and !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1)
   {
	path_end();
	mp_potential_step(seenx, seeny, 3, obj_wall)
	image_angle = enemy_direction;
	seenx = obj_player.x;
    seeny = obj_player.y;
	
} else if (path_index != path0) {
	
	mp_potential_step(start_x, start_y, 2, obj_wall);

	if (abs(x - start_x) < 2 && abs(y - start_y) < 2) {
		//path_start(path1, 1, path_action_reverse, false)
		image_angle = 0;
	}

}

//check the last loction where the player was
