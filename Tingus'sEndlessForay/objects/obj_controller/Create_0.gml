if (instance_number(obj_controller) > 1) {
    instance_destroy();
    exit;
}

maxHealth = 100;
health    = maxHealth;
coins     = 0;

upgrade_max_health_level = 0;
upgrade_vspeed_level    = 0;
upgrade_hspeed_level    = 0;
upgrade_gun_reload_time = 0;
upgrade_damage_level    = 0;

invulnerable = false;
invuln_time   = 0;

respawn_room = UpgradeShopRoom;
