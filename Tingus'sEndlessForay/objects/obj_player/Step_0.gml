move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

var move_speed = 4;
x += move_x * move_speed;
y += move_y * move_speed;

