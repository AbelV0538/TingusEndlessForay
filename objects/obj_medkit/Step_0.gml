if (can_magnet && instance_exists(obj_player)) {
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    magnet_speed = min(magnet_speed + acceleration, max_magnet_speed);
    
    hspeed = lengthdir_x(magnet_speed, _dir);
    vspeed = lengthdir_y(magnet_speed, _dir);
    
} else {
    speed *= 0.95; 
}