// Destroy the bullet first (or after applying damage)
instance_destroy(other);

// Amount of damage (example)
var dmg = 10;

// Find or create controller
var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    gc = instance_create_layer(0, 0, "Instances", obj_controller);
}
if (gc == noone) {
    // If creation failed, bail to avoid crash
    exit;
}

// Ensure fields exist
if (!variable_instance_exists(gc, "health")) gc.health = gc.maxHealth = 1;
if (!variable_instance_exists(gc, "invulnerable")) gc.invulnerable = false;

// Apply damage
if (!gc.invulnerable) {
    gc.health -= dmg;
    if (gc.health <= 0) {
        gc.health = 0;
        // Go to upgrade shop safely if respawn_room exists
        if (variable_instance_exists(gc, "respawn_room")) {
            room_goto(gc.respawn_room);
        }
    }
}
