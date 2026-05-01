if (instance_exists(obj_player) && !has_whizzed) {
    
   if (place_meeting(x + hspeed, y + vspeed, obj_player)) {
    has_whizzed = true; 
    return;
}

 
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    
    if (dist < whiz_distance) {
        var snd = audio_play_sound_at(snd_bullet_whiz, x, y, 0, 20, 150, 1, false, 1);
        audio_sound_pitch(snd, random_range(0.8, 1.2)); 
        has_whizzed = true; 
    }
}