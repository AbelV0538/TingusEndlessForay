instance_destroy(self)
var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    gc.health -= 25
		if(gc.health <= 0){
			room.room_goto(UpgradeShopRoom);
		}
	}
			