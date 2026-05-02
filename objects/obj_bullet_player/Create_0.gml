if (!variable_instance_exists(id, "speed")) speed = 8;
if (!variable_instance_exists(id, "direction")) direction = 0;

// If you used vx/vy instead of speed/direction, convert:
if (!variable_instance_exists(id, "vx")) {
    vx = lengthdir_x(speed, direction);
    vy = lengthdir_y(speed, direction);
}
image_angle = direction;
