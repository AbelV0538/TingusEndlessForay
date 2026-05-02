draw_set_halign(fa_center);

// Comment these out or delete them if you haven't created these Font Assets:
// draw_set_font(fnt_menu_large); 



// draw_set_font(fnt_menu_small);
//draw_set_color(c_gold); 

var _record_text = "Best Run: Floor " + string(global.best_room);
var _record_text2 = "Health Level: " + string(obj_controller.upgrade_max_health_level);
var _record_text3 = "Speed Level: " + string(global.best_room);
var _record_text4 = "Fire Rate Level: " + string(obj_controller.upgrade_max_health_level);

if (global.best_room <= 1) {
    _record_text = "No recorded runs yet!";
}

draw_text(room_width / 2, 800, _record_text);
draw_text(room_width / 2, 815, _record_text2);
draw_text(room_width / 2, 830, _record_text3);
draw_text(room_width / 2, 845, _record_text4);
draw_set_color(c_white);