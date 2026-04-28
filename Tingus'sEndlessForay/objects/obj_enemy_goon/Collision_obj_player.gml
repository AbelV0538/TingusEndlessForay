instance_destroy(self)
global.health -= 25
if global.health <= 0 {
	//Replace this with being sent back to the upgrade room
	//in the final game.
	instance_destroy(other)
}