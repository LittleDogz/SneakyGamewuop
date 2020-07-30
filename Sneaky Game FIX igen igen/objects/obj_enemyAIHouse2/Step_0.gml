


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

if global.pathblockerHouse2 = false && (distance_to_point(wanderx,wandery)) < 1
		{
		path_start(House2Path,1,path_action_restart,true)
		global.pathblockerHouse2 = true
		}


if global.pathblockerHouse2 = true
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
	global.pathblockerHouse2 = false
    }
if distance_to_point(seenx,seeny) > 0
    mp_potential_step(seenx,seeny,2,false);
else
    state = 0;
}

#endregion
