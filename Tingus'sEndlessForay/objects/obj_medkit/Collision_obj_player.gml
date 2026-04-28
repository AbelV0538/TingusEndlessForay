global.health = 100 + (25 * global.upgrade_max_health)
instance_destroy(self)
// Example: increase max health when buying health upgrade
var gc = instance_find(obj_controller, 0);
if (gc != noone) {
    if (gc.coins >= cost) {
        gc.coins -= cost;
        gc.upgrade_health_level += 1;
        gc.maxHealth += 100 + (25&global.upgrade_max_health);
        gc.health = gc.maxHealth; // optionally heal on upgrade
    }
}
