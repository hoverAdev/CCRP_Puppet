window_set_min_width(room_width);
window_set_min_height(room_height);

if(true /* TODO  code that tests if our screen is big enough for 1280x960 */) {
	window_set_size(room_width*2, room_height*2);
	window_center();
}