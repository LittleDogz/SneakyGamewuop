
if(place_meeting(x,y+10,obj_shopkepper)) and (global.interact_key == true){
	draw_sprite(spr_textbox,obj_shopkepper.x,obj_shopkepper.y,450);
	
}
if(place_meeting(x,y+10,obj_shopkepper)) and (global.interact_key == true){
	draw_set_font(inventoryfont);
	draw_text_ext(380,470,text,20,360)
}

