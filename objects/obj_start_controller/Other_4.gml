var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    // create controller if missing
    instance_create_layer(0, 0, "Instances", obj_controller);
    gc = instance_find(obj_controller, 0);
}

// Reset health to max when starting from title screen
if (variable_instance_exists(gc, "maxHealth")) {
    gc.health = gc.maxHealth;
}

// Optional: reset coins on new run if you want fresh start
// gc.coins = 0;
