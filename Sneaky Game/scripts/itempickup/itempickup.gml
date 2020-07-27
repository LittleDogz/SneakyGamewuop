additem (playerinventory, myitemname, myitemamount, myitemdescription);

if(place_meeting(x,y+1,obj_player)) and (global.interact_key == true){
	instance_destroy();	
}

