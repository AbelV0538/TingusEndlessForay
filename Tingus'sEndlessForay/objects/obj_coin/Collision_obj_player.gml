// On collision with coin
var gc = instance_find(obj_controller, 0);
if (gc != noone) {
    gc.coins += 1;
    instance_destroy(self); // remove coin
}
