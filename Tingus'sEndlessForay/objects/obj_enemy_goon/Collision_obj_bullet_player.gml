instance_create_layer(x,y-8,"Instances",obj_coin)
instance_create_layer(x-8,y+8,"Instances",obj_coin)
instance_create_layer(x+8,y+8,"Instances",obj_coin)
audio_play_sound(snd_enemy_dog_kill, 1, false);
instance_destroy(other)
instance_destroy(self)