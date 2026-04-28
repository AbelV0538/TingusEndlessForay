// obj_controller - Draw GUI Event (safe version)

if (!show_debug_hud) {
    exit;
}

// Ensure core vars exist; if not, provide safe defaults
if (!variable_instance_exists(id, "health")) health = 0;
if (!variable_instance_exists(id, "maxHealth")) maxHealth = 1;
if (!variable_instance_exists(id, "coins")) coins = 0;
if (!variable_instance_exists(id, "upgrade_health_level")) upgrade_health_level = 0;
if (!variable_instance_exists(id, "upgrade_damage_level")) upgrade_damage_level = 0;
if (!variable_instance_exists(id, "upgrade_speed_level")) upgrade_speed_level = 0;

// Layout variables
var hud_margin = 16;
var hud_x = hud_margin;
var hud_y = hud_margin;
var hud_line_h = 20;
var hud_bar_w = 200;
var hud_bar_h = 12;

// Draw settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Health text
draw_text(hud_x, hud_y, "Health: " + string(health) + " / " + string(maxHealth));
hud_y += hud_line_h;

// Health bar background
draw_set_color(c_gray);
draw_rectangle(hud_x, hud_y, hud_x + hud_bar_w, hud_y + hud_bar_h, false);

// Health bar fill (avoid division by zero)
var fill_w = hud_bar_w * (health / max(1, maxHealth));
draw_set_color(c_red);
draw_rectangle(hud_x, hud_y, hud_x + fill_w, hud_y + hud_bar_h, false);
hud_y += hud_bar_h + 8;

// Coins
draw_set_color(c_yellow);
draw_text(hud_x, hud_y, "Coins: " + string(coins));
hud_y += hud_line_h;

// Upgrades summary
draw_set_color(c_white);
draw_text(hud_x, hud_y, "Upgrades: H" + string(upgrade_health_level) + " D" + string(upgrade_damage_level) + " S" + string(upgrade_speed_level));
hud_y += hud_line_h;

// Current room name (use explicit RGB color instead of an undefined constant)
var current_room_name = room_get_name(room);
draw_set_color(make_color_rgb(200,200,200)); // light gray
draw_text(hud_x, hud_y, "Room: " + string(current_room_name));
