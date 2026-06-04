/// @description Insert description here
// You can write your code in this editor

var _f11 = keyboard_check_pressed(vk_f11);

if (_f11) {
    global.fullscreen = !global.fullscreen;
    window_set_fullscreen(global.fullscreen);
}
