var item_id = argument0;

var gc = instance_find(obj_controller, 0);
if (gc == noone) return false;

// Ensure coins exist
if (!variable_instance_exists(gc, "coins")) gc.coins = 0;

// Determine cost
var cost = 0;

switch (item_id) {
    case "medkit":          cost = gc.cost_medkit; break;
    case "health_upgrade":  cost = gc.cost_health_upgrade; break;
    case "damage_upgrade":  cost = gc.cost_damage_upgrade; break;
    case "speed_upgrade":   cost = gc.cost_speed_upgrade; break;
    default: return false;
}

// Check funds
if (gc.coins < cost) return false;

// Deduct cost
gc.coins -= cost;

// Apply effect
switch (item_id) {
    case "medkit":
        gc.health = gc.maxHealth;
    break;

    case "health_upgrade":
        gc.upgrade_max_health_level += 1;
        gc.maxHealth = 100 + (25 * gc.upgrade_max_health_level);
        gc.health = gc.maxHealth;
    break;

    case "damage_upgrade":
        gc.upgrade_damage_level += 1;
    break;

    case "speed_upgrade":
        gc.upgrade_speed_level += 1;
    break;
}

return true;
