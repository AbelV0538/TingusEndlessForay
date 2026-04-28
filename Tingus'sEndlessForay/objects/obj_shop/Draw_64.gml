var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    draw_set_color(c_white);
    draw_text(16, 16, "No controller found");
    exit;
}

// Header
draw_set_color(c_white);
draw_text(ui_x, ui_y - 28, "Upgrade Shop");
draw_set_color(make_color_rgb(200,200,200));
draw_text(ui_x, ui_y - 12, "Coins: " + string(gc.coins));

// List items
for (var i = 0; i < array_length(items); ++i) {
    var it = items[i];
    var y = ui_y + i * ui_line_h;
    if (i == selected_index) {
        draw_set_color(make_color_rgb(40,40,40));
        draw_rectangle(ui_x - 8, y - 4, ui_x + 300, y + ui_line_h - 8, true);
        draw_set_color(c_white);
    } else {
        draw_set_color(c_white);
    }
    draw_text(ui_x, y, it.name + " - " + string(it.cost) + "c");
    draw_set_color(make_color_rgb(160,160,160));
    draw_text(ui_x + 220, y, it.desc);
}
