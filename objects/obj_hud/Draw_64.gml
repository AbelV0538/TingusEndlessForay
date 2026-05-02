// obj_hud - Draw GUI
var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    // Controller not present yet — draw nothing or draw placeholders
    draw_set_color(c_white);
    draw_text(16, 16, "HEALTH: -- / --");
    draw_text(16, 36, "COINS: --");
    return;
}

// Use safe local copies so we never read a missing variable directly
var drawHealth  = variable_instance_exists(gc, "health")    ? gc.health    : 100;
var drawMax     = variable_instance_exists(gc, "maxHealth") ? gc.maxHealth : 100;
var drawCoins   = variable_instance_exists(gc, "coins")     ? gc.coins     : 0;

// Draw text
draw_set_color(c_white);
draw_text(16, 16, "HEALTH: " + string(drawHealth) + " / " + string(drawMax));
draw_text(16, 36, "COINS: " + string(drawCoins));

// Draw health bar
var bar_w = 200;
var bar_h = 12;
var fill = bar_w * (drawHealth / max(1, drawMax));
draw_set_color(c_gray);
draw_rectangle(16, 56, 16 + bar_w, 56 + bar_h, false);
draw_set_color(c_red);
draw_rectangle(16, 56, 16 + fill, 56 + bar_h, false);
