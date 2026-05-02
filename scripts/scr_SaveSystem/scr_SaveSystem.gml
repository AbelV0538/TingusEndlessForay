/// @desc Saves current meta-progression to JSON
function save_roguelike_data() {
    if (instance_exists(obj_controller)) {
        
        // --- AUTO-UPDATE BEST ROOM LOGIC ---
        var _current_floor = get_room_num();
        
        // Only update if the current floor is higher than the record
        // (We ignore -1 from Room_end so the final screen doesn't overwrite your record)
        if (_current_floor > global.best_room) {
            global.best_room = _current_floor;
        }
        // ------------------------------------

        var _save_struct = {
            meta: {
                hp_lvl:     obj_controller.upgrade_max_health_level,
                vspd_lvl:   obj_controller.upgrade_vspeed_level,
                hspd_lvl:   obj_controller.upgrade_hspeed_level,
                reload_lvl: obj_controller.upgrade_gun_reload_time,
                dmg_lvl:    obj_controller.upgrade_damage_level,
                
                best_rm:    global.best_room // Now correctly updated via your custom script
            },
            history: global.past_runs
        };

        var _json_string = json_stringify(_save_struct, true);
        var _file = file_text_open_write("save_data.json");
        file_text_write_string(_file, _json_string);
        file_text_close(_file);
        
        show_debug_message("Saved! Best Floor: " + string(global.best_room));
    }
}

function load_roguelike_data() {
    if (!file_exists("save_data.json")) return;

    var _file = file_text_open_read("save_data.json");
    var _json = "";
    while (!file_text_eof(_file)) {
        _json += file_text_readln(_file);
    }
    file_text_close(_file);

    var _struct = json_parse(_json);

    // Apply values back to the instance
    if (instance_exists(obj_controller)) {
        obj_controller.upgrade_max_health_level = _struct.meta.hp_lvl;
        obj_controller.upgrade_vspeed_level     = _struct.meta.vspd_lvl;
        obj_controller.upgrade_hspeed_level     = _struct.meta.hspd_lvl;
        obj_controller.upgrade_gun_reload_time  = _struct.meta.reload_lvl;
        obj_controller.upgrade_damage_level     = _struct.meta.dmg_lvl;
        
        global.best_room = _struct.meta.best_rm;
        global.past_runs = _struct.history;
        
        show_debug_message("Game Loaded Successfully");
    }
}