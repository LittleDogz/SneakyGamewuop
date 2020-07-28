if state = 0
{
facing = point_direction(x,y,wanderx,wandery);

if distance_to_point(wanderx,wandery) < 1
    {
    wanderx=irandom(room_width);
    wandery=irandom(room_height);
    }
else
    {
	mp_potential_step(start_x, start_y, 2, obj_wall);

	if (abs(x - start_x) < 2 && abs(y - start_y) < 2) {
		//path_start(path0, 2, path_action_reverse, false)
	}
	
if distance_to_point(obj_player.x,obj_player.y) < sightdist 
&& abs(angle_difference(facing,point_direction(x,y,obj_player.x,obj_player.y))) < cone
&& !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1) 
    state = 1;
}

if state = 1
{
  facing = point_direction(x,y,seenx,seeny);

if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,0)
    {
    seenx = obj_player.x;
    seeny = obj_player.y;
    }

if distance_to_point(seenx,seeny) > 0
    mp_potential_step(seenx,seeny,2,1);
	
}
}