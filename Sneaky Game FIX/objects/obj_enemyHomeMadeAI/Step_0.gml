seenx = obj_player.x;
seeny = obj_player.y;

//sneakmode
if (global.sneakmode = true)
   {
	playerdir = 80
   }
else
   {
	playerdir = 150
   }
	

//player chase
if distance_to_point(obj_player.x,obj_player.y) < playerdir 
&& abs(angle_difference(enemy_direction,point_direction(x,y,obj_player.x,obj_player.y))) < cone
&& !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1) 
   {
	enemy_direction = point_direction(x,y,seenx,seeny);
	path_end();
	mp_potential_step(seenx, seeny, 3, obj_wall)
	image_angle = enemy_direction;
	seenx = obj_player.x;
    seeny = obj_player.y;
	
} else if (path_index != path0) {
	
	enemy_direction = point_direction(x,y,wanderx,wandery);
	mp_potential_step(start_x, start_y, 2, obj_wall);

	if (abs(x - start_x) < 2 && abs(y - start_y) < 2) {
		//path_start(path0, 1, path_action_restart, false)
		image_angle = 0;
	}

}




//neiw checker
//if distance_to_object(obj_neiw) < neiw
//and !collision_line(x,y,obj_neiw.x,obj_neiw.y,obj_wall,1,1) {
//	event_user(0);
//	}
	
//check the last loction where the player was
