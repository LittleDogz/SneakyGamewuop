var seek = state = 1
var idle = state = 0


if seek
{
  facing = point_direction(x,y,seenx,seeny);

if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,0)
    {
	path_end();
    seenx = obj_player.x;
    seeny = obj_player.y;
    }
if distance_to_point(seenx,seeny) > 0
    mp_potential_step(seenx,seeny,2,1);
else
    idle = 0
}

