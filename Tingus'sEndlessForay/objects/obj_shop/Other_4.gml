var gc = instance_find(obj_controller, 0);

if (gc != noone) {
    // If controller exists, restore health to current max
    if (!variable_instance_exists(gc, "maxHealth")) gc.maxHealth = 100;
    gc.health = gc.maxHealth;
    gc.invulnerable = true;
    gc.invuln_time = 30;
} else {
    // Controller missing (shouldn't happen if persistent), create one and initialize safely
    var newc = instance_create_layer(0, 0, "Instances", obj_controller);
    newc.maxHealth = 100;
    newc.health = newc.maxHealth;
    newc.coins = 0;
    newc.invulnerable = true;
    newc.invuln_time = 30;
}
