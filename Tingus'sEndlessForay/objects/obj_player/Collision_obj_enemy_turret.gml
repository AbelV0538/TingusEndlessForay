if (variable_instance_exists(other, "destroyed_flag") && other.destroyed_flag) exit;
other.destroyed_flag = true;
instance_destroy(other);

// Apply damage to controller safely
var gc = instance_find(obj_controller, 0);
if (gc == noone) exit;
if (variable_instance_exists(gc, "invulnerable") && gc.invulnerable) exit;

var dmg = 50;
if (!variable_instance_exists(gc, "health")) {
    // controller exists but health missing — initialize safely
    gc.health = 100; // or gc.maxHealth if you prefer
}
gc.health -= dmg;
if (gc.health <= 0) {
    gc.health = 0;
    // go to shop safely (do not 'with' gc if gc might be noone)
    room_goto(gc.respawn_room);
}
