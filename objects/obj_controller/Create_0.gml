paused = false;
pause_option = 0;

death_screen = false;
death_option = 0;

end_option = 0;

// Only play if not already playing
if (!audio_is_playing(snd_industrial)) {
    audio_play_sound(snd_industrial, 1, true); // priority 1, loop = true
}

if (instance_number(obj_controller) > 1) {
    instance_destroy();
    exit;
} else {
    instance_activate_object(obj_controller);
    audio_play_sound(snd_industrial, 1, true);
}

maxHealth = 100;
health    = maxHealth;
coins     = 0;

upgrade_max_health_level = 0;
upgrade_vspeed_level    = 0;
upgrade_hspeed_level    = 0;
upgrade_gun_reload_time = 0;
upgrade_damage_level    = 0;

invulnerable = false;
invuln_time   = 0;

respawn_room = UpgradeShopRoom;
