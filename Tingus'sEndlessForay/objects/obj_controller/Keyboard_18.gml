//Cheat codes for dirty frauds

//Alt + G: Restart game
if keyboard_check_pressed(ord("G")) {
	game_restart()
}

//ALT + R: Restart room
//IMPORTANT: Modify later in development so it doesn't work
//in the tutorial, upgrade screen or title screen
if keyboard_check_pressed(ord("R")) {
	room_restart()
}

//ALT + N: Next room
//IMPORTANT: Modify later in development so it doesn't work
//in the tutorial, upgrade screen or title screen
if keyboard_check_pressed(ord("N")) {
	room_goto_next()
}

//Alt + C: Add 100 coins
if keyboard_check_pressed(ord("C")) {
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    gc.coins += 100
	}

}

//Alt + H: Replenish to maximum health
if keyboard_check_pressed(ord("H")) {
	var gc = instance_find(obj_controller, 0);
	if (gc != noone) {
	    gc.health = 100 + (25 * gc.upgrade_max_health_level)
	}
}