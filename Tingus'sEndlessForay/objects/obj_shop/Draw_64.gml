var gc = instance_find(obj_controller, 0);
if (gc == noone) exit;

// Header
draw_set_color(c_white);
draw_text(ui_x, ui_y - 28, "Upgrade Shop");

draw_set_color(make_color_rgb(200,200,200));
draw_text(ui_x, ui_y - 12, "Coins: " + string(gc.coins));

// Draw items
for (var i = 0; i < array_length(shop_items); i++) {

    var entry = shop_items[i];
    var line_y = ui_y + i * ui_line_h;

    // Highlight selected
    if (i == selected_index) {
        draw_set_color(make_color_rgb(40,40,40));
        draw_rectangle(ui_x - 8, line_y - 4, ui_x + 300, line_y + ui_line_h - 8, false);
        draw_set_color(c_white);
    } else {
        draw_set_color(c_white);
    }

    draw_text(ui_x, line_y, entry.name + " - " + string(entry.cost) + "c");

    draw_set_color(make_color_rgb(160,160,160));
    draw_text(ui_x + 220, line_y, entry.desc);
}
