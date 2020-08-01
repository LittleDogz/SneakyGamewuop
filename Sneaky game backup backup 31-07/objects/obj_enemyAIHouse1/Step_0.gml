


#region Direction den vej den går
if(direction >= 306 or direction <= 45) {
	image_angle = 0;
}
if(direction >= 46 and direction <= 135) {
	image_angle = 90;
}
if(direction >= 136 && direction <= 225) {
	image_angle = 180;
}
if(direction >= 226 && direction <= 305) {
	image_angle = 270;
}
#endregion

#region Sneakmode
if (global.sneakmode = true)
   {
	sightdist = 60
	cone = 30
   }
else
   {
	sightdist = 140
	cone = 259
   }
   
#endregion

#region player chase
if state = 0
{
facing = point_direction(x,y,wanderx,wandery);

if global.pathblocker = false && (distance_to_point(wanderx,wandery)) < 1
		{
		path_start(House1Path,1,path_action_reverse,true)
		global.pathblocker = true
		}


if global.pathblocker = true
    {
	
    }
else 
    {
	mp_potential_step(wanderx, wandery, 2, false)
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
	path_end();
    seenx = obj_player.x;
    seeny = obj_player.y;
	global.pathblocker = false
    }
if distance_to_point(seenx,seeny) > 0
    mp_potential_step(seenx,seeny,random_range(2,2.6),false);
else
    state = 0;
}

#endregion

#region DeadScreen
if distance_to_point(obj_player.x,obj_player.y) < Jailede {
 room_goto(DeadScreen)
}
#endregion

#region reset from start if ai cam to long awary
if distance_to_point(wanderx,wandery) > 1600 {
	path_start(House1Path,1,path_action_reverse,true);
}
#endregion