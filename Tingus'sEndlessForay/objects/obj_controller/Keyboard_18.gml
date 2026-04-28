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
	global.coins += 100
}

//Alt + H: Replenish to maximum health
if keyboard_check_pressed(ord("H")) {
	global.health = 100 + (25 * global.upgrade_max_health)
}