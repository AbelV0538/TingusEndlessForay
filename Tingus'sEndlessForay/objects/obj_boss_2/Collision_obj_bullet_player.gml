instance_destroy(other)

if iframes == false {
	
	audio_play_sound(snd_enemy_boss_hurt, 1, false);
	boss_health -= 10
	
	if boss_health > 0 {
		
		iframes = true
		sprite_index = spr_boss_2_hurt
		alarm[1] = 60
		
	} else {
	
	instance_create_layer(x-16,y-16,"Instances",obj_coin)
	instance_create_layer(x-8,y-16,"Instances",obj_coin)
	instance_create_layer(x,y-16,"Instances",obj_coin)
	instance_create_layer(x+8,y-16,"Instances",obj_coin)
	instance_create_layer(x+16,y-16,"Instances",obj_coin)
	
	instance_create_layer(x-16,y-8,"Instances",obj_coin)
	instance_create_layer(x-8,y-8,"Instances",obj_coin)
	instance_create_layer(x,y-8,"Instances",obj_coin)
	instance_create_layer(x+8,y-8,"Instances",obj_coin)
	instance_create_layer(x+16,y-8,"Instances",obj_coin)
	
	instance_create_layer(x-16,y,"Instances",obj_coin)
	instance_create_layer(x-8,y,"Instances",obj_coin)
	instance_create_layer(x,y,"Instances",obj_coin)
	instance_create_layer(x+8,y,"Instances",obj_coin)
	instance_create_layer(x+16,y,"Instances",obj_coin)
	
	instance_create_layer(x-16,y+8,"Instances",obj_coin)
	instance_create_layer(x-8,y+8,"Instances",obj_coin)
	instance_create_layer(x,y+8,"Instances",obj_coin)
	instance_create_layer(x+8,y+8,"Instances",obj_coin)
	instance_create_layer(x+16,y+8,"Instances",obj_coin)
	
	instance_create_layer(x-16,y+16,"Instances",obj_coin)
	instance_create_layer(x-8,y+16,"Instances",obj_coin)
	instance_create_layer(x,y+16,"Instances",obj_coin)
	instance_create_layer(x+8,y+16,"Instances",obj_coin)
	instance_create_layer(x+16,y+16,"Instances",obj_coin)
	
	instance_create_layer(x,y,"Instances",obj_medkit)
	
	instance_destroy(obj_boss_barrier)
	audio_play_sound(snd_enemy_boss_kill, 1, false);
	instance_destroy(self)
	
	}
}