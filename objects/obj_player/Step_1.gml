/// @description Get inputs

// Find first available gamepad

var maxpads = gamepad_get_device_count();
if(maxpads == 0) { gp_index = 0; } 
else {
	for (var i = 0; i < maxpads; i++)
	{
	    if (gamepad_is_connected(i))
	    {
			gp_index = i;
	        break;
	    } else {
			gp_index = 0;
		}
	}
}

// Reset keyections (?), we want to check inputs again on every frame
key_up = false;
key_left = false;
key_down = false;
key_right = false;
key_attack = false;
key_attack_u = false;
key_defend = false;
key_debug = false;

// Check for up
if(
	keyboard_check(ord("W"))
	|| keyboard_check(vk_up)
	|| gamepad_button_check(gp_index, gp_padu)
	) {
	key_up = true;
}

// Check for left
if(
	keyboard_check(ord("A"))
	|| keyboard_check(vk_left)
	|| gamepad_button_check(gp_index, gp_padl)
	) {
	key_left = true;
}

// Check for down
if(
	keyboard_check(ord("S"))
	|| keyboard_check(vk_down)
	|| gamepad_button_check(gp_index, gp_padd)
	) {
	key_down = true;
}

// Check for right
if(
	keyboard_check(ord("D"))
	|| keyboard_check(vk_right)
	|| gamepad_button_check(gp_index, gp_padr)
	) {
	key_right = true;
}

// Check for attack
if(
	mouse_check_button(mb_left)
	|| keyboard_check(ord("Z"))
	|| gamepad_button_check(gp_index, gp_face1)
	) {
	key_attack = true;
}

// Check for attack released/up
if(
	mouse_check_button_released(mb_left)
	|| keyboard_check_released(ord("Z"))
	|| gamepad_button_check_released(gp_index, gp_face1)
	) {
	key_attack_u = true;
}

// Check for defend
if(
	mouse_check_button(mb_right)
	|| keyboard_check(ord("X"))
	|| gamepad_button_check(gp_index, gp_face2)
	) {
	key_defend = true;
}

// Check for debug
if(keyboard_check_pressed(vk_delete))
{
	key_debug = true
}