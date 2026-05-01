if distance_to_object(obj_player) < 150 && canShoot {
	instance_create_layer(x, y, "Instances", obj_bullet_enemy_basic)
	canShoot = false
	alarm[0] = 90
}