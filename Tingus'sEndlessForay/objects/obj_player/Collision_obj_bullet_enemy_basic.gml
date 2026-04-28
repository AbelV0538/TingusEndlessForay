// damage function
function take_damage(amount) {
    /// take_damage(amount)
	var amount = argument0;

	// Find the persistent controller
	var gc = instance_find(obj_controller, 0);

	// If controller doesn't exist, create one at a safe layer/position
	if (gc == noone) {
	    // Replace "Instances" with the actual layer name used in your rooms
	    gc = instance_create_layer(0, 0, "Instances", obj_controller);
	    // Optionally force initialization if your Create event expects something
	    // (the Create event will run automatically on creation)
	}

	// Guard again in case creation failed
	if (gc == noone) {
	    // Fallback: apply damage to a local variable or ignore to avoid crash
	    // For safety, just return
	    exit;
	}

	// Now safely modify health
	if (!variable_instance_exists(gc, "health")) gc.health = gc.maxHealth = 1;
	if (!variable_instance_exists(gc, "invulnerable")) gc.invulnerable = false;

	if (!gc.invulnerable) {
	    gc.health -= amount;
	    if (gc.health <= 0) {
	        gc.health = 0;
	        // Trigger death flow safely
	        if (variable_instance_exists(gc, "respawn_room")) {
	            room_goto(gc.respawn_room);
	        } else {
	            // fallback: go to a known room or restart
	            // room_goto(rm_UpgradeShopRoom); // use your actual room asset name
	        }
	    }
	}
}
instance_destroy(other)
take_damage(10);