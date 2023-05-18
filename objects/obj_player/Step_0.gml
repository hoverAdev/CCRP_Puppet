/// @description Process inputs

// Process movement
vspeed = 0;
hspeed = 0;

if(key_up)    { vspeed -= 8; }
if(key_left)  { hspeed -= 8; }
if(key_down)  { vspeed += 8; }
if(key_right) { hspeed += 8; }

// Process attack/defend

if(key_attack) {
	// Start "spin attack" timer if not already started
	if(attack_held = false && alarm[0] = -1) {
		alarm[0] = room_speed * 5;
	}
	
	// Keep track of that we're holding the attack key
	if(!attack_held) { attack_held = true; }
}

if(key_attack_u) {
	attack_held = false;
	if(alarm[0] = -1) {
		// TODO  Code that does the charged (spin) attack
	} else {
		// TODO  Code that does the normal attack
	}
}
	
// Process debug mode
if (key_debug) { global.debug = !global.debug; }
show_debug_overlay(global.debug)