// 1. Check if the player exists to avoid errors
if (instance_exists(obj_player)) {
    
    // 2. Find the direction to the player
    var _target_dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    // 3. Smoothly rotate the enemy toward that direction
    // (Optional: Remove the next line if you want it to snap instantly)
    // The '4' represents the turning speed. Lower is wider turns.
	direction += angle_difference(_target_dir, direction) * 0.05;
	image_angle = direction;
    
    // 4. Set the movement speed
    speed = 2.5; 
    
} else {
    // If player is dead, stop moving or fly off screen
    speed = 0;
}