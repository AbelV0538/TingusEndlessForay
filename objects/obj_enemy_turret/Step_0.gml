if distance_to_object(obj_player) < 200 {
	//YES, the +90s are necessary.
	image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	if canShoot {
		canShoot = false
		instance_create_layer(x,y,"Instances",obj_bullet_turret, {image_angle : point_direction(x, y, obj_player.x, obj_player.y) + 90})
		alarm[0] = 15
		alarm[1] = 30
		alarm[2] = 45
		alarm[3] = 60
		alarm[4] = 90
	}
}