draw_self();

draw_set_color(mycolor);
draw_set_font(inventoryfont)

draw_text(bbox_left + 40, bbox_top + textborder, "image");
draw_text(bbox_left + 160, bbox_top + textborder, "amount");

itemleftstart = bbox_left + 70
itemtopstart = bbox_top + 50

for (i = 0; i < inventoryendat; ++i){
	for(j = 0; j < playerinventorywidth; ++j){
		if(j == 1)
		draw_text(itemleftstart + 140, itemtopstart + (i* 32), ds_grid_get(myitems, 1, i));
		if(j == 3)
			draw_sprite(ds_grid_get(myitems, j, i), 0, bbox_left + 20, itemtopstart + (i * 32));
		
	}
}

draw_rectangle(bbox_left + textborder, itemtopstart + (itemselected * 32), bbox_right - textborder, itemtopstart + (itemselected * 32) + 32, true);

draw_sprite(spr_ItemBox, 0, bbox_right + sprite_get_xoffset(spr_ItemBox), room_height - sprite_get_yoffset(spr_ItemBox));

if(isempty)
	draw_text_ext(bbox_right + 50, room_height - sprite_get_yoffset(spr_ItemBox) - 100, emptymessage, 32, sprite_get_width(spr_ItemBox) - textborder);
else
	draw_text_ext(bbox_right + 15, room_height - sprite_get_yoffset(spr_ItemBox) - 100, ds_grid_get(myitems, 2, itemselected), 32, sprite_get_width(spr_ItemBox) - textborder);


