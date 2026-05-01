// Ensure controller exists
if (instance_number(obj_controller) == 0) {
    // Use a layer name that exists in your rooms (commonly "Instances")
    instance_create_layer(0, 0, "Instances", obj_controller);
}
// Aim / reticle
aim_angle    = 0;
reticle_dist = 64;
reticle_size = 12;

// hide system cursor while playing
cursor_sprite = spr_reticle;
window_set_cursor(cr_none);

// Shooting
canShoot = true;
bullet_speed = 12; // tune this

// Optional: cache controller id for faster access (update if controller can be recreated)
gc_id = instance_find(obj_controller, 0);

cost_medkit = 50;                // default cost; change as needed
// other item costs
cost_health_upgrade = 50;
cost_damage_upgrade = 75;
cost_speed_upgrade = 60;
