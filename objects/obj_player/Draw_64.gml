// Reticle position in room coords
var rx = x + lengthdir_x(reticle_dist, aim_angle);
var ry = y + lengthdir_y(reticle_dist, aim_angle);

draw_set_color(c_lime);
draw_circle(rx, ry, reticle_size, false);
draw_line(rx - reticle_size*1.5, ry, rx + reticle_size*1.5, ry);
draw_line(rx, ry - reticle_size*1.5, rx, ry + reticle_size*1.5);
