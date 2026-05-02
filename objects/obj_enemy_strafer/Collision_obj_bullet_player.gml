dropchance = irandom_range(1, 5)

//1 in 5 chance to drop medkit instead of coins
if dropchance == 5 {
	instance_create_layer(x,y,"Instances",obj_medkit)
	instance_destroy(other)
	instance_destroy(self)
} else {
	up_coin = instance_create_layer(x,y-8,"Instances",obj_coin)
	up_coin.is_manual_placement = false;
	down_coin = instance_create_layer(x-8,y+8,"Instances",obj_coin)
	down_coin.is_manual_placement = false;
	_coin = instance_create_layer(x+8,y+8,"Instances",obj_coin)
	_coin.is_manual_placement = false;
	audio_play_sound(snd_enemy_dog_kill, 1, false);
	instance_destroy(other)
	instance_destroy(self)
}