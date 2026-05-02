if (paused) {
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 1920, 1080, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);

    draw_text(960, 350, "PAUSED");

    var option0 = "Resume";
    var option1 = "Title Screen";
    var option2 = "Quit Game";

    if (pause_option == 0) option0 = "> Resume <";
    if (pause_option == 1) option1 = "> Title Screen <";
    if (pause_option == 2) option2 = "> Quit Game <";

    draw_text(960, 460, option0);
    draw_text(960, 520, option1);
    draw_text(960, 580, option2);

    draw_set_halign(fa_left);
}

if (room == rm_death)
{
    // Darken background first
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 1920, 1080, false);
    draw_set_alpha(1);

    // Draw stretched death screen on top
    var scale_x = 1920 / sprite_get_width(spr_death_screen);
    var scale_y = 1080 / sprite_get_height(spr_death_screen);

    draw_sprite_ext(spr_death_screen, 0, 0, 0, scale_x, scale_y, 0, c_white, 1);

    // Draw arrow on top
    draw_set_color(c_white);

    if (death_option == 0)
    {
        draw_text(650, 550, ">");
    }

    if (death_option == 1)
    {
        draw_text(650, 620, ">");
    }
}

if (room == Room_end) {
    draw_set_color(c_aqua);

    if (end_option == 0) {
        draw_text_transformed(430, 730, ">", 2, 2, 0);
    }

    if (end_option == 1) {
        draw_text_transformed(280, 810, ">", 2, 2, 0);
    }
}

// obj_controller -> Draw GUI End
// Draw the entire game with the CRT effect
shader_set(shd_crt);

// Pass the resolution to the shader
shader_set_uniform_f(u_res, display_get_gui_width(), display_get_gui_height());

// Draw the application surface (the whole game)
draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());

shader_reset();

