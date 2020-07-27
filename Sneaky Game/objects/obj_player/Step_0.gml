
//movement til player(step)
up_key = keyboard_check(vk_up); 
left_key = keyboard_check(vk_left); 
right_key = keyboard_check(vk_right); 
down_key = keyboard_check(vk_down);
global.interact_key = keyboard_check(ord("E"));
inv_key = keyboard_check(ord("I"));


//diagonal Movement
if (vspd != 0) and (hspd !=0){
	spd = dagspd;
}
else {
	spd = walkspd;
}

//sneak

if (keyboard_check(vk_lshift)){
	spd = sneakspd;
} else {
	spd = walkspd;
}

//perfekt movement
hspd = right_key - left_key
vspd = down_key - up_key
y += vspd * spd;
x += hspd * spd;


//collision


if(place_meeting(x,y,obj_col)){
	  spd = 0;
}


//animation
if(down_key == true){
sprite_index = spr_playerdown		
} 

if(up_key == true){
sprite_index = spr_playerup
}	

if(right_key == true){
	sprite_index = spr_playerright	
}

if(left_key == true){
	sprite_index = spr_playerleft
}

var allmov = left_key and up_key and right_key and down_key

if(keyboard_check(allmov)){
	sprite_index = spr_player	
}


	

	

	

	





	
	




