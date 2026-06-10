/// @description Insert description here
// You can write your code in this editor

//Posições da camera
var _x2 = room_width//camera_get_view_width(view_camera[0]);
var _y2 = room_height//camera_get_view_height(view_camera[0]);


//Ele vai fazer a tela inteira escurecer por um tempo
if (escurecer) {
    var _larg = view_get_wport(0);
    var _alt  = view_get_hport(0);
    draw_set_color(c_black);
    draw_rectangle(0, 0, _larg, _alt, false);
    draw_set_color(-1);
}
