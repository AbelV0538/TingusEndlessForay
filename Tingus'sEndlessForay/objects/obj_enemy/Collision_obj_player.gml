obj_player.hp -= 1;

if (obj_player.hp < 1){
	// Restart the room or reduce player health
 room_restart();
}