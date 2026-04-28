// health
var gc = instance_find(obj_controller, 0);
if (gc != noone) {
    // Optionally initialize player-local cached values for animation, but authoritative is gc.health
    // e.g., hp_display = gc.health;
}

//shoot verification
canShoot = true
