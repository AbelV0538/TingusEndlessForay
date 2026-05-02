if (!variable_instance_exists(id, "speed")) speed = 8;
if (!variable_instance_exists(id, "direction")) direction = 0;
audio_play_sound_at(snd_gunshot, x, y, 0, 30, 400, 1, false, 1);

// If you used vx/vy instead of speed/direction, convert:
if (!variable_instance_exists(id, "vx")) {
    vx = lengthdir_x(speed, direction);
    vy = lengthdir_y(speed, direction);
}
image_angle = direction;
