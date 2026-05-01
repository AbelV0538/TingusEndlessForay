
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

// Aim at mouse (room coordinates)
aim_angle = point_direction(x, y, mouse_x, mouse_y);

// Fire (Enter)
if mouse_check_button(mb_left) && canShoot {
    // create bullet and set its direction/speed
    var b = instance_create_layer(x, y + 8, "Instances", obj_bullet_player);
    if (b != noone) {
        b.direction = aim_angle;
        b.speed = bullet_speed;
        b.image_angle = aim_angle;
    }

    canShoot = false;
    var gc = instance_find(obj_controller, 0);
    if (gc != noone) {
        alarm[0] = max(1, 30 - (5 * gc.upgrade_gun_reload_time));
    } else {
        alarm[0] = 30;
    }
}
//invulnerability timer to prevent constant hits
var gc = instance_find(obj_controller, 0);
if (gc != noone) {
    if (gc.invulnerable) {
        gc.invuln_time -= 1;
        if (gc.invuln_time <= 0) {
            gc.invulnerable = false;
        }
    }
}