if distance_to_object(obj_player) < 200 && canShoot && iframes == false {
	instance_create_layer(x-12, y+4, "Instances", obj_bullet_enemy_basic)
	instance_create_layer(x+12, y+4, "Instances", obj_bullet_enemy_basic)
	alarm[2] = 6
	alarm[3] = 12
	alarm[4] = 18
	alarm[5] = 24
	canShoot = false
	alarm[0] = 180
}