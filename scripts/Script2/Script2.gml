if keyboard_check_pressed(vk_f4)
{
    global.scale += 1;
    window_set_size(800 * global.scale, 600 * global.scale);
}