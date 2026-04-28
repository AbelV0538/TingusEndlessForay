
if place_meeting(x , y - sprite_height/4, obj_wall) or place_meeting(x , y - sprite_height/4, obj_boss_barrier)  {
	vspeed = 0
} else {
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    vspeed = -2 - (2 * gc.upgrade_vspeed_level);
	} else {
	    vspeed = -2; // fallback so the game doesn't crash
	}

}

if keyboard_check(ord("A")) && !place_meeting(x - sprite_width/4 , y, obj_wall) {
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    hspeed = -2 - (2 * gc.upgrade_hspeed_level);
	} else {
	    hspeed = -2; // fallback so the game doesn't crash
	}
} else if keyboard_check(ord("A")) && place_meeting(x - sprite_width/4 , y, obj_wall) {
	hspeed = 0
}

if keyboard_check(ord("D")) && !place_meeting(x + sprite_width/4 , y, obj_wall) {
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    hspeed = 2 + (2 * gc.upgrade_hspeed_level);
	} else {
	    hspeed = 2; // fallback so the game doesn't crash
	}
} else if keyboard_check(ord("D")) && place_meeting(x + sprite_width/4 , y, obj_wall) {
	hspeed = 0
}

if !keyboard_check(ord("A")) and !keyboard_check(ord("D")) {
	hspeed = 0
}

if keyboard_check(ord("A")) and keyboard_check(ord("D")) {
	hspeed = 0
}

if keyboard_check(vk_enter) && canShoot {
	instance_create_layer(x,y+8,"Instances",obj_bullet_player)
	canShoot = false
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    alarm[0] = 30 - (5 * gc.upgrade_gun_reload_time);
	} else {
	    alarm[0] = 30; // fallback so the game doesn't crash
	}
}
var gc = instance_find(obj_controller, 0);
if (gc != noone) {
    if (gc.invulnerable) {
        gc.invuln_time -= 1;
        if (gc.invuln_time <= 0) {
            gc.invulnerable = false;
        }
    }
}