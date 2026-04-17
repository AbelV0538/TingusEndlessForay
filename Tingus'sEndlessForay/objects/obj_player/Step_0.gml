// Input logic
var _move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var _move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

// Move the player
x += _move_x * 4;
y += _move_y * 4;

// Update facing direction (only if moving)
if (_move_x != 0 || _move_y != 0) {
    image_angle = point_direction(0, 0, _move_x, _move_y);
};

// Check for fire input (Space bar or Left Mouse)
var _fire_input = keyboard_check(vk_space);

if (_fire_input && can_shoot) {
    var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    
    // Pass the player's angle to the bullet
    _bullet.direction = image_angle;
    _bullet.image_angle = image_angle; // Rotates the bullet sprite too
    _bullet.speed = 12;
    
    can_shoot = false;
    alarm[0] = fire_rate;
}