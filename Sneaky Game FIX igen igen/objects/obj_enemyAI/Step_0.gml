if state = 0

{
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
	image_angle = facing;
    seenx = obj_player.x;
    seeny = obj_player.y;
    }
if distance_to_point(seenx,seeny) > 0
    mp_potential_step(seenx,seeny,2,1);

else
    state = 0;
}