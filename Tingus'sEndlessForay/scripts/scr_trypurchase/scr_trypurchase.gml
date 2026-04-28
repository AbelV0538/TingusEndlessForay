function scr_trypurchase(item){
	var item = argument0;
	var gc = instance_find(obj_controller, 0);
	if (gc == noone) return false;

	// Map item to cost and effect
	var cost = 0;
	switch (item) {
	    case "medkit": cost = gc.cost_medkit; break;
	    case "health_upgrade": cost = gc.cost_health_upgrade; break;
	    case "damage_upgrade": cost = gc.cost_damage_upgrade; break;
	    case "speed_upgrade": cost = gc.cost_speed_upgrade; break;
	    default: return false;
	}

	// Check funds
	if (gc.coins < cost) {
	    // Optionally play "no money" sound or show message
	    return false;
	}

	// Deduct and apply effect
	gc.coins -= cost;

	if (item == "medkit") {
	    // If medkit is a one-time heal or a permanent max-health increase, choose behavior:
	    // Option A: heal to full
	    gc.health = gc.maxHealth;
	    // Option B: increase max health permanently (uncomment if desired)
	    // gc.upgrade_max_health_level += 1;
	    // gc.maxHealth = 100 + (25 * gc.upgrade_max_health_level);
	    // gc.health = gc.maxHealth;
	}
	else if (item == "health_upgrade") {
	    gc.upgrade_max_health_level += 1;
	    gc.maxHealth = 100 + (25 * gc.upgrade_max_health_level);
	    gc.health = gc.maxHealth;
	}
	else if (item == "damage_upgrade") {
	    gc.upgrade_damage_level += 1;
	    // apply effect elsewhere (player damage calculation should read gc.upgrade_damage_level)
	}
	else if (item == "speed_upgrade") {
	    gc.upgrade_speed_level += 1;
	    // apply effect elsewhere (player speed should read gc.upgrade_speed_level)
	}

	return true;

}