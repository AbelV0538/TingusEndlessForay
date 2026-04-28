
if place_meeting(x , y - sprite_height/4, obj_wall) or place_meeting(x , y - sprite_height/4, obj_boss_barrier)  {
	vspeed = 0
} else {
	vspeed = -2 - (2 * global.upgrade_vspeed_level)
}

if keyboard_check(ord("A")) && !place_meeting(x - sprite_width/4 , y, obj_wall) {
	hspeed = -2 - (2 * global.upgrade_hspeed_level)
} else if keyboard_check(ord("A")) && place_meeting(x - sprite_width/4 , y, obj_wall) {
	hspeed = 0
}

if keyboard_check(ord("D")) && !place_meeting(x + sprite_width/4 , y, obj_wall) {
	hspeed = 2 + (2 * global.upgrade_hspeed_level)
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
	alarm[0] = 30 - (5 * global.upgrade_gun_reload_time)
}