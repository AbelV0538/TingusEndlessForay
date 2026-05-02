direction = point_direction(self.x, self.y, obj_player.x, obj_player.y)
if direction >= 0 && direction <= 180 { instance_destroy(self) }
else {// Ref: 100, Max: 800
audio_play_sound_at(snd_gunshot, x, y, 0, 30, 400, 1, false, 1);}
direction = clamp(direction, 181, 359)
speed = 8

has_whizzed = false;
whiz_distance = 64;
