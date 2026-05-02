selected_index = 0;
ui_x = 64;
ui_y = 120;
ui_line_h = 48;
ui_width = 800;


// Define shop items (id must match scr_try_purchase cases)
shop_items = [
    { id: "health_upgrade", name: "Max Health +25", cost: 100, desc: "Increase max HP permanently" },
    { id: "fire_rate",      name: "Fire Rate Up",   cost: 80,  desc: "Increase rate of fire" },
    { id: "speed_upgrade",  name: "Speed Up",       cost: 60,  desc: "Increase movement speed" }
];

// UI state
fade_alpha = 0;        // for simple fade-in
fade_speed = 0.08;
mouse_over_index = -1;
