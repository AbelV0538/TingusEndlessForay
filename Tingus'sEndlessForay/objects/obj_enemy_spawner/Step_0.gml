while(can_spawn){
	x = 1200 * random(100)/100;
	y = 700 * random(100)/100;
	instance_create_layer(x, y, "Instances", obj_enemy);
	can_spawn = false;
	alarm[0] = 180;

}

