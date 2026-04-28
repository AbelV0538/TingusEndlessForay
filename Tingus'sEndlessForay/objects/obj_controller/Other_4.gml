if room == F1 {
	
	if window_get_fullscreen() == false
    {
        window_set_fullscreen(true);
    }
	
}

global.health = 100;
global.coins = 0;
global.dash_upgrade_unlocked = false
global.upgrade_vspeed_level = 0;
global.upgrade_hspeed_level = 0;
global.upgrade_gun_reload_time = 0
global.upgrade_max_health = 0; // each lvl adds 25 extra hp

//Once game-loading mechanism has been implemented, add code
//to change the global values of these from the .json file.