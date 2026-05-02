instance_destroy(other)
turret_hp -= 1
sprite_index = spr_enemy_turret_hurt
alarm[5] = 10

if turret_hp = 0 {
	instance_create_layer(x-8,y-8,"Instances",obj_coin)
	instance_create_layer(x+8,y-8,"Instances",obj_coin)
	instance_create_layer(x,y,"Instances",obj_coin)
	instance_create_layer(x-8,y+8,"Instances",obj_coin)
	instance_create_layer(x+8,y+8,"Instances",obj_coin)
	instance_destroy(other)
	instance_destroy(self)
}