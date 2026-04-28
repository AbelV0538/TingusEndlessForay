// Core persistent state
maxHealth = 100;
health = maxHealth;
coins = 0;

// Upgrade levels (example, the proper one can be set later)
upgrade_health_level = 0;
upgrade_damage_level = 0;
upgrade_speed_level = 0;

// Other globals you may need
invulnerable = false;
respawn_room = UpgradeShopRoom; // set to the actual room asset if you have it

// Debug / HUD options
show_debug_hud = true;

//guard to prevent multiple controllers from present, which could cause resets.
if (instance_exists(obj_controller) && id != instance_find(obj_controller, 0)) {
    instance_destroy();
    exit;
}
