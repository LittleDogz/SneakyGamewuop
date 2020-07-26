gridtoaddto = argument0;
newitemname = argument1;
newitemamount = argument2;
newitemdescription = argument3;
newitemsprite = argument4
newitemscript = argument5;

//case 1 - item is already in the inventory
for(i = 0;i < ds_grid_height(gridtoaddto); ++i) 
{
	if(ds_grid_get(gridtoaddto, 0, i) == newitemname) {
		ds_grid_set(gridtoaddto, 1, i, ds_grid_get(gridtoaddto, 1, i) + newitemamount);
		return true;
	}
}


//case 2 - its not in the inventory	
if(ds_grid_get(gridtoaddto, 0, 0,) !=0)
	ds_grid_resize(gridtoaddto, playerinventorywidth, ds_grid_height(gridtoaddto) + 1);
	
newitemspot = ds_grid_height(gridtoaddto) - 1;
ds_grid_set(gridtoaddto, 0, newitemspot, newitemname);
ds_grid_set(gridtoaddto, 1, newitemspot, newitemamount);
ds_grid_set(gridtoaddto, 2, newitemspot, newitemdescription);
ds_grid_set(gridtoaddto, 3, newitemspot, newitemsprite);
ds_grid_set(gridtoaddto, 4, newitemspot, newitemscript);

return true;