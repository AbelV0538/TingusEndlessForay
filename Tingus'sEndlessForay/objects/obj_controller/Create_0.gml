// Prevent duplicates
if (instance_number(obj_controller) > 1) {
    instance_destroy();
    exit;
}

// Core persistent state
maxHealth = 100;               // base max HP
health = maxHealth;            // current HP
coins = 0;

// Upgrade levels and counters
upgrade_max_health_level = 0;  // each level adds 25 HP
upgrade_vspeed_level = 0;
upgrade_hspeed_level = 0;
upgrade_gun_reload_time = 0;

// Other flags
dash_upgrade_unlocked = false;
invulnerable = false;
show_debug_hud = true;

// Death/respawn room (set to your actual room asset name)
respawn_room = UpgradeShopRoom; // replace if your room asset name differs

//const variables for our upgrades
cost_medkit = 50;
cost_health_upgrade = 100;
cost_damage_upgrade = 75;
cost_speed_upgrade = 60;

