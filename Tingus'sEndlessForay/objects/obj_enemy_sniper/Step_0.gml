if distance_to_object(obj_player) < 350 {
	//YES, the +90s are necessary.
	image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	if canShoot {
		instance_create_layer(x,y,"Instances",obj_sniper_scope)
		canShoot = false
		alarm[0] = 180
	}
}