if (instance_exists(obj_controller) && obj_controller.paused) {
    hspeed = 0;
    vspeed = 0;
    exit;
}

if distance_to_object(obj_player) < 150 && canShoot {
	instance_create_layer(x, y, "Instances", obj_bullet_enemy_basic)
	canShoot = false
	alarm[0] = 60
}