var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    gc = instance_create_layer(0, 0, "Instances", obj_controller);
}
if (gc != noone) {
    if (!variable_instance_exists(gc, "health")) gc.health = 0;
		gc.health += 30;
		if(gc.health > gc.maxHealth){
			gc.health = gc.maxHealth;
		}
}
instance_destroy(); // destroy the medkit instance
