if(direction >= 306 or direction <= 45) {
	image_angle = 0;
}
if(direction >= 46 and direction <= 135) {
	image_angle = 90;
}
if(direction >= 136 && direction <= 225) {
	image_angle = 180;
}
if(direction >= 226 && direction <= 305) {
	image_angle = 270;
}

//Start new path when current path ends
if (path_index == -1) {
    var my_path = irandom(2);
    path_start(path[my_path], 1.5, path_action_reverse, true);
}