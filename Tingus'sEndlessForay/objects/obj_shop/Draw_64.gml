/// obj_shop Draw GUI (fixed, centered, controller style)
var shop_gc = instance_find(obj_controller, 0);
if (shop_gc == noone) return;
if (instance_exists(shop_gc) && shop_gc.paused) {
    exit;
}

// Full-screen semi-transparent overlay (match controller style)
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, 1920, 1080, false);
draw_set_alpha(1);

// Centered alignment like controller
draw_set_halign(fa_center);
draw_set_color(c_white);

// Header
draw_text(960, 220, "UPGRADE SHOP");

// Coins line
draw_set_color(make_color_rgb(200,200,200));
draw_text(960, 260, "Coins: " + string(shop_gc.coins));

// Items list (centered, spaced vertically)
var item_count = array_length(shop_items);
var start_y = 340;
var line_spacing = (variable_instance_exists(id, "ui_line_h") ? ui_line_h : 48);

for (var idx = 0; idx < item_count; ++idx) {
    var item = shop_items[idx];
    var y_pos = start_y + idx * line_spacing;

    // Build display text
    var display_name = item.name + " - " + string(item.cost) + "c";
    if (idx == selected_index) display_name = "> " + display_name + " <";

    // Dim unaffordable items
    if (shop_gc.coins >= item.cost) {
        draw_set_color(c_white);
    } else {
        draw_set_color(make_color_rgb(140,140,140));
    }

    draw_text(960, y_pos, display_name);

    // Description (smaller/dimmer)
    draw_set_color(make_color_rgb(160,160,160));
    draw_text(960, y_pos + 22, item.desc);
}

// Purchase feedback (centered above footer)
var footer_y = 880;
if (variable_instance_exists(shop_gc, "shop_last_purchase")) {
    if (shop_gc.shop_last_purchase == "failed") {
        draw_set_color(make_color_rgb(220,120,120));
        draw_text(960, footer_y - 40, "Not enough coins");
    } else if (shop_gc.shop_last_purchase != "") {
        draw_set_color(make_color_rgb(120,220,120));
        draw_text(960, footer_y - 40, "Purchased: " + string(shop_gc.shop_last_purchase));
    }
}

// Footer / instructions
draw_set_color(make_color_rgb(180,180,180));
draw_text(960, footer_y, "Use W/S to select, Enter or E to buy, B to exit");

// Restore left alignment state used elsewhere
draw_set_halign(fa_left);
draw_set_alpha(1);