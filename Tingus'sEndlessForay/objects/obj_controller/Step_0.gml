enemy_count = instance_number(obj_enemy)

if (enemy_count == 0){
	if (room_exists(Normal)) {
        room_goto(Boss);
    } else {
		game_restart();
        // win state
    }
}
	