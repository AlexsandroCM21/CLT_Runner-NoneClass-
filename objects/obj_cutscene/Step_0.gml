/// @description Insert description here
// You can write your code in this editor
metodo_pega_input();

if (jump) image_index ++;

if (acabou_animacao()) {
    global.modo = [rm_hub, "home"];
    global.cutscene_inicio = true;
    save();
}
