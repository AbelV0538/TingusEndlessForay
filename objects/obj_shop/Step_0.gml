// Ensure controller exists
var gc = instance_find(obj_controller, 0);
if (gc == noone) {
    instance_create_layer(0,0,"Instances", obj_controller);
    gc = instance_find(obj_controller, 0);
}
if (instance_exists(gc) && gc.paused) {
    exit;
}

// Keep player invulnerable while in shop
gc.invulnerable = true;

// Fade in
if (variable_instance_exists(id, "fade_alpha")) {
    fade_alpha = min(1, fade_alpha + (variable_instance_exists(id, "fade_speed") ? fade_speed : 0.08));
}

// Keyboard navigation
if (keyboard_check_pressed(ord("W"))) {
    selected_index = max(0, selected_index - 1);
}
if (keyboard_check_pressed(ord("S"))) {
    selected_index = min(array_length(shop_items) - 1, selected_index + 1);
}

// Purchase with Enter or E
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))) {
    var item = shop_items[selected_index];
    if (scr_try_purchase(item.id)) {
        // visual feedback handled in Draw GUI via gc.shop_last_purchase
    } else {
        // visual failure feedback handled in Draw GUI via gc.shop_last_purchase = "failed"
    }
}

// Escape with B to return to main room (rm_F1 assumed)
if (keyboard_check_pressed(ord("B"))) {
    gc.invulnerable = false;
	// restore player health when leaving shop
    if (variable_instance_exists(gc, "maxHealth")) {
        gc.health = gc.maxHealth;
    }
	save_roguelike_data()
    room_goto(rm_F1);
}

// Mouse hover and click
mouse_over_index = -1;
for (var i = 0; i < array_length(shop_items); ++i) {
    var line_y = ui_y + i * ui_line_h;
    var rect_x1 = ui_x;
    var rect_y1 = line_y - 8;
    var rect_x2 = ui_x + ui_width;
    var rect_y2 = line_y + ui_line_h - 8;
    if (mouse_x >= rect_x1 && mouse_x <= rect_x2 && mouse_y >= rect_y1 && mouse_y <= rect_y2) {
        mouse_over_index = i;
        if (mouse_check_button_pressed(mb_left)) {
            var item = shop_items[i];
            scr_try_purchase(item.id);
        }
    }
}
if (mouse_over_index != -1) selected_index = mouse_over_index;
