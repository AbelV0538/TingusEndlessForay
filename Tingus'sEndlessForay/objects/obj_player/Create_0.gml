// Ensure controller exists
if (instance_number(obj_controller) == 0) {
    // Use a layer name that exists in your rooms (commonly "Instances")
    instance_create_layer(0, 0, "Instances", obj_controller);
}

// Local flags
canShoot = true;

// Optional: cache controller id for faster access (update if controller can be recreated)
gc_id = instance_find(obj_controller, 0);

cost_medkit = 50;                // default cost; change as needed
// other item costs
cost_health_upgrade = 50;
cost_damage_upgrade = 75;
cost_speed_upgrade = 60;
