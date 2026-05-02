speed = 35
direction = point_direction(self.x, self.y, obj_player.x, obj_player.y)

audio_play_sound_at(snd_sniper, x, y, 0, 30, 400, 1, false, 1);
direction = clamp(direction, 181, 359)
speed = 8

has_whizzed = false;
whiz_distance = 64;
