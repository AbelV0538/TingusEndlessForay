if (room != rm_death) {
if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;

    if (paused) {
        with (obj_enemy_goon) image_speed = 0;
        with (obj_player) image_speed = 0;
    } else {
        with (obj_enemy_goon) image_speed = 1;
        with (obj_player) image_speed = 1;
    }
}
}

if (paused) {
    if (keyboard_check_pressed(ord("W"))) {
        pause_option -= 1;
        if (pause_option < 0) pause_option = 2;
    }

    if (keyboard_check_pressed(ord("S"))) {
        pause_option += 1;
        if (pause_option > 2) pause_option = 0;
    }

    if (keyboard_check_pressed(vk_enter)) {
        if (pause_option == 0) {
            // Resume
            paused = false;
        }
        else if (pause_option == 1) {
            // Title Screen
            paused = false;
            room_goto(Room_start);
        }
        else if (pause_option == 2) {
            // Quit Game
            game_end();
        }
    }
}

if (room == rm_death) {
    if (keyboard_check_pressed(ord("W"))) {
        death_option -= 1;
        if (death_option < 0) death_option = 1;
    }

    if (keyboard_check_pressed(ord("S"))) {
        death_option += 1;
        if (death_option > 1) death_option = 0;
    }

    if (keyboard_check_pressed(vk_enter)) {
        if (death_option == 0) {
            // Retry / shop
            room_goto(UpgradeShopRoom);
        }
        else if (death_option == 1) {
            // Title screen
            room_goto(Room_start);
        }
    }
}


if (room == Room_end) {
    if (keyboard_check_pressed(ord("W"))) {
        end_option -= 1;
        if (end_option < 0) end_option = 1;
    }

    if (keyboard_check_pressed(ord("S"))) {
        end_option += 1;
        if (end_option > 1) end_option = 0;
    }

    if (keyboard_check_pressed(vk_enter)) {
        if (end_option == 0) {
            room_goto(rm_F1); // or F1 if that is your title room
        }
        else if (end_option == 1) {
            room_goto(Room_start);
        }
    }
}

audio_falloff_set_model(audio_falloff_linear_distance);


audio_listener_orientation(0, 0, 1, 0, -1, 0);