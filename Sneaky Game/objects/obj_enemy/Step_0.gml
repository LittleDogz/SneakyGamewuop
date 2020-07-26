 facing = point_direction(x,y,wanderx,wandery); //change your facing direction

if distance_to_point(wanderx,wandery) < 1 //if you're at your point, find a new one
    {
    wanderx=irandom(room_width);
    wandery=irandom(room_height);
    }
else   //otherwise move to your random point
    {
    mp_potential_step(wanderx,wandery,0.6,0); 
    }
while (!place_free(wanderx,wandery))   //make sure the point isn't in a wall!
    {
    wanderx=irandom(room_width);
    wandery=irandom(room_height);
    }
	
    if abs(angle_difference(facing,point_direction(x,y,obj_player.x,obj_player.y))) < cone
    && distance_to_point(obj_player.x,obj_player.y) < sightdist 
    && !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,1) 
    {
       state = 1;
    }