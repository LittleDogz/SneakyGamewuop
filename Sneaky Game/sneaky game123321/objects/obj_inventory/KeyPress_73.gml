if(!instance_exists(object_invGui)) {
		instance_create_layer(96,96,"sut",object_invGui)
}
	
else {
	instance_destroy(object_invGui);
}