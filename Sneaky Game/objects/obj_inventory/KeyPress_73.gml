if(!instance_exists(object_invGui)) {
		inventorydisplay = instance_create_depth(0, 0, depth - 1, object_invGui);
			with(inventorydisplay) {
				x = 96
					y = 96
}
	}
	
else {
	instance_destroy(object_invGui);
}
