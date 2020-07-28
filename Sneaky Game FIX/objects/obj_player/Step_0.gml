//movement til player(step)
up_key = keyboard_check(vk_up){ 
if(place_meeting(x,y+1,spr_col)){
	y=y-3;	
	}
}

left_key = keyboard_check(vk_left){ 
if(place_meeting(x+3,y,spr_col)){
	x=x-3;
	}
}

right_key = keyboard_check(vk_right){
	if(place_meeting(x-3,y,spr_col)){
	x=x+3;				
	}
}
	
down_key = keyboard_check(vk_down){
	if(place_meeting(x,y-1,spr_col)){
	y=y+3;
	}
}


global.interact_key = keyboard_check(ord("E"));
global.inv_key = keyboard_check(ord("I"));


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
	global.sneakmode = true;
	image_speed = 0.5
} else {
	spd = walkspd;
	global.sneakmode = false;
	image_speed = 1
}

//perfekt movement
hspd = right_key - left_key
vspd = down_key - up_key
y += vspd * spd;
x += hspd * spd;








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


