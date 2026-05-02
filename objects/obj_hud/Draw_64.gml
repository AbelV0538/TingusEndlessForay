// obj_hud - Draw GUI

var gc = instance_find(obj_controller, 0);
var margin = 120; // Increased to 120 to clear the screen edge
var vertical_spacing = 25; // Controls the gap between lines

if (gc == noone) {
    draw_set_color(c_white);
    draw_text(margin, 16, "HEALTH: -- / --");
    draw_text(margin, 16 + vertical_spacing, "COINS: --");
    return;
}

// Safe local copies
var drawHealth  = variable_instance_exists(gc, "health")    ? gc.health    : 100;
var drawMax     = variable_instance_exists(gc, "maxHealth") ? gc.maxHealth : 100;
var drawCoins   = variable_instance_exists(gc, "coins")     ? gc.coins     : 0;

// Draw Text
draw_set_color(c_white);
// Line 1: Health
draw_text(margin, 16, "HEALTH: " + string(drawHealth) + " / " + string(drawMax));
// Line 2: Coins (positioned below Health)
draw_text(margin, 16 + vertical_spacing, "COINS: " + string(drawCoins));

// Draw Health Bar
var bar_w = 200;
var bar_h = 14;
var bar_y = 16 + (vertical_spacing * 2); // Positioned below Coins
var fill = bar_w * (drawHealth / max(1, drawMax));

// Background (Gray)
draw_set_color(c_dkgray);
draw_rectangle(margin, bar_y, margin + bar_w, bar_y + bar_h, false);

// Fill (Red)
draw_set_color(c_red);
draw_rectangle(margin, bar_y, margin + fill, bar_y + bar_h, false);

// Optional: Outline for the bar
draw_set_color(c_black);
draw_rectangle(margin, bar_y, margin + bar_w, bar_y + bar_h, true);