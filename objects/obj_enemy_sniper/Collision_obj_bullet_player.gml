instance_destroy(other)

_coin = instance_create_layer(x-8,y-8,"Instances",obj_coin)
_coin.is_manual_placement = false;
_coin = instance_create_layer(x+8,y-8,"Instances",obj_coin)
_coin.is_manual_placement = false;
_coin = instance_create_layer(x,y,"Instances",obj_coin)
_coin.is_manual_placement = false;
_coin = instance_create_layer(x-8,y+8,"Instances",obj_coin)
_coin.is_manual_placement = false;
_coin = instance_create_layer(x+8,y+8,"Instances",obj_coin)
_coin.is_manual_placement = false;

audio_play_sound(snd_enemy_dog_kill, 1, false);
instance_destroy(self)