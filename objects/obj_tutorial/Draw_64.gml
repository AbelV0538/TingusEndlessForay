// 1. Setup coordinates and text
var _center_x = display_get_gui_width() / 2 - 350;

var _record_text3 = "A and D to MOVE";
var _record_text = "LEFT CLICK TO SHOOT";
var _record_text4 = "PRESS ESC TO PAUSE";
var _record_text2 = "PRESS ENTER WHEN READY";



// Box dimensions (Change these to make the box bigger or smaller!)
var _box_width = 300; 
var _box_height = 150;

var _x1 = _center_x - (_box_width / 2);
var _y1 = 380; // Starts a little bit above your first line of text
var _x2 = _center_x + (_box_width / 2);
var _y2 = _y1 + _box_height;


// ==========================================
// 2. DRAW THE BACKGROUND BOX FIRST
// ==========================================
draw_set_color(c_black);
draw_set_alpha(0.8); // 0.8 makes it slightly see-through. Use 1 for solid black.

// The 'false' at the end tells GameMaker to fill the box in. 
// If it was 'true', it would only draw the outline!
draw_rectangle(_x1, _y1, _x2, _y2, false); 


// ==========================================
// 3. DRAW THE TEXT ON TOP
// ==========================================
draw_set_color(c_white); 
draw_set_alpha(1); // Reset alpha so the text is fully solid
draw_set_halign(fa_center);

draw_text(_center_x, 400, _record_text);
draw_text(_center_x, 430, _record_text2); 
draw_text(_center_x, 460, _record_text3);
draw_text(_center_x, 490, _record_text4);


// 4. Reset alignment for other objects
draw_set_halign(fa_left);