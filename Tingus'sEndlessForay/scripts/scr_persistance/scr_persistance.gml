function save_rougelike_data(){
	var _data = {
		meta: {
			max_hp:		obj_controller.upgrade_max_health_level,
			spd:		obj_controller.upgrade_hspeed_level,
			f_rate:		obj_controller.upgrade_gun_reload_time,
			top_room:	obj_controller.best_room
		},
		history: global.past_runs
	};
	var _string = json_stringify(_data, true); // 'true' makes it readable in Notepad
    var _file = file_text_open_write("player_save.json");
    file_text_write_string(_file, _string);
    file_text_close(_file);
}

function load_roguelike_data() {
    if (!file_exists("player_save.json")) return;

    var _file = file_text_open_read("player_save.json");
    var _json = "";
    while (!file_text_eof(_file)) {
        _json += file_text_readln(_file);
    }
    file_text_close(_file);

    var _struct = json_parse(_json);

    // Apply back to the instance of obj_controller
    if (instance_exists(obj_controller)) {
        obj_controller.upgrade_damage_level = _struct.meta.max_hp;
        obj_controller.upgrade_hspeed_level = _struct.meta.spd;
        obj_controller.upgrade_gun_reload_time  = _struct.meta.f_rate;
        obj_controller.best_room = _struct.meta.top_room;
        global.past_runs = _struct.history;
    }
}