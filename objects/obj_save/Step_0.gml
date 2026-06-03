/// @description Insert description here
// You can write your code in this editor

x = lerp(x, x1, .1)
y = y1 + (dist*(slotsave-1))

var _amt = .2;


//Se o mouse estiver encostando em mim
mouse = (position_meeting(mouse_x, mouse_y, id));

pressing = (mouse and mouse_check_button(mb_left));


//Se segurando o botão, vamos alterar o xscale
if (pressing) image_xscale = lerp(image_xscale, 2, _amt);
else image_xscale = lerp(image_xscale, xscale, _amt);


//Mudando o xscale se estou encostando no botão
if (mouse and !pressing) image_xscale = lerp(image_xscale, 4, _amt);
else image_xscale = lerp(image_xscale, xscale, _amt);

//Fadezin bacana
image_alpha  = lerp(image_alpha, 1, .1)


if (pressing) {
    global.modo = ["cutscene", "home"];
    load();
}
