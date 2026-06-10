/// @description Insert description here
// You can write your code in this editor
metodo_keys();

//Se o modo for "home", vamos no estado inicio
if (modo_equals(, "home")) estado_inicio();
else if (modo_equals(, "save")) estado_save();


if (keyboard_check_pressed(vk_escape)) {
    global.modo[1] = "home";
}

