// Navigate list with up/down and purchase with E
if (keyboard_check_pressed(vk_up)) {
    selected_index = max(0, selected_index - 1);
}
if (keyboard_check_pressed(vk_down)) {
    selected_index = min(array_length(items) - 1, selected_index + 1);
}

// Attempt purchase
if (keyboard_check_pressed(ord("E"))) {
    var it = items[selected_index];
    if (scr_try_purchase(it.id)) {
        // success feedback
        audio_play_sound(snd_purchase, 1, false); // optional sound
    } else {
        // failure feedback
        audio_play_sound(snd_error, 1, false); // optional sound
    }
}
