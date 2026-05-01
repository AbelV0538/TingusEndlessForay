function scr_try_purchase(){
	// Returns true on success, false on failure
	var item_id = argument0;
	var gc = instance_find(obj_controller, 0);
	if (gc == noone) return false;

	switch (item_id) {
	    case "health_upgrade":
	        var cost = 100;
	        if (gc.coins < cost) {
	            gc.shop_last_purchase = "failed";
	            return false;
	        }
	        gc.coins -= cost;
	        gc.upgrade_max_health_level += 1;
	        gc.maxHealth = 100 + 25 * gc.upgrade_max_health_level;
	        gc.health = gc.maxHealth;
	        gc.shop_last_purchase = "health_upgrade";
	        return true;

	    case "fire_rate":
	        var cost = 80;
	        if (gc.coins < cost) {
	            gc.shop_last_purchase = "failed";
	            return false;
	        }
	        gc.coins -= cost;
	        // Use upgrade_gun_reload_time as ROF level counter (lower reload = faster fire)
	        gc.upgrade_gun_reload_time += 1;
	        gc.shop_last_purchase = "fire_rate";
	        return true;

	    case "speed_upgrade":
	        var cost = 60;
	        if (gc.coins < cost) {
	            gc.shop_last_purchase = "failed";
	            return false;
	        }
	        gc.coins -= cost;
	        gc.upgrade_hspeed_level += 1;
	        gc.shop_last_purchase = "speed_upgrade";
	        return true;

	    default:
	        gc.shop_last_purchase = "failed";
	        return false;
	}
}