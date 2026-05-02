if (can_magnet && instance_exists(obj_player) && !is_manual_placement) {
    // 1. Find the direction to the player
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    // 2. Gradually increase speed (Acceleration)
    magnet_speed = min(magnet_speed + acceleration, max_magnet_speed);
    
    // 3. Move toward the playerddddddddd
    hspeed = lengthdir_x(magnet_speed, _dir);
    vspeed = lengthdir_y(magnet_speed, _dir);
    
    // 4. Collection Logic (if they get close enough, destroy and add score)
} else {
    // Optional: Slow down friction if not magnetizing yet
    speed *= 0.95; 
}