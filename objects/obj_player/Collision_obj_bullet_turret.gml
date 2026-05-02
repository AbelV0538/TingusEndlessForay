if (variable_instance_exists(other, "destroyed_flag") && other.destroyed_flag) exit;
other.destroyed_flag = true;
instance_destroy(other);

// Apply damage to controller safely
var gc = instance_find(obj_controller, 0);
if (gc == noone) exit;
if (variable_instance_exists(gc, "invulnerable") && gc.invulnerable) exit;

var dmg = 10;
if (!variable_instance_exists(gc, "health")) {
    // controller exists but health missing — initialize safely
    gc.health = 100; // or gc.maxHealth if you prefer
}
audio_play_sound(snd_player_hurt, 1, false);
gc.health -= dmg;
if (gc.health <= 0) {
    gc.health = 0;
    audio_play_sound(snd_player_kill, 1, false);
    window_set_cursor(cr_default);
    
    // SAVE THE DATA
    save_roguelike_data();
    
    // Instead of jumping immediately, set a flag in the controller
    gc.is_dying = true; 
    gc.death_timer = 5; // A tiny 5-frame delay to let things settle
    exit;
}