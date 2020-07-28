image_xscale = 2;
image_yscale = 2;


textborder = 12;
myitems = playerinventory;
mycolor = c_black;
isempty = false;
emptymessage = "You haven't stolen anything yet";


globalvar itemselected, scrolledamount,inventoryendat;



itemselected = 0;
scrolledamount = 0;
inventoryendat = min(ds_grid_height(myitems), floor((sprite_height - (textborder * 3)) / 32));
if(ds_grid_get(myitems, 0, 0) == 0) {
	inventoryendat = 0;
	isempty = true;
}