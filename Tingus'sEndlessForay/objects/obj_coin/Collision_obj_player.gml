// obj_coin - Collision with obj_player

var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    gc = instance_create_layer(0, 0, "Instances", obj_controller);
}
if (gc != noone) {
    if (!variable_instance_exists(gc, "coins")) gc.coins = 0;
    gc.coins += 1;
}
instance_destroy(); // destroy the coin instance
