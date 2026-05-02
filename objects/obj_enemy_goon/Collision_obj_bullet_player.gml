up_coin = instance_create_layer(x,y-8,"Instances",obj_coin)
up_coin.is_manual_placement = false;
down_coin = instance_create_layer(x-8,y+8,"Instances",obj_coin)
down_coin.is_manual_placement = false;
_coin = instance_create_layer(x+8,y+8,"Instances",obj_coin)
_coin.is_manual_placement = false;
audio_play_sound(snd_enemy_dog_kill, 1, false);
instance_destroy(other)
instance_destroy(self)