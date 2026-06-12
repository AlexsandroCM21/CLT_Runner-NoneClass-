/// @description Insert description here
// You can write your code in this editor
draw_self();

//Se estou morto, não vou mostrar os pontos e vou sair nesta parte do código
if (modo_equals(, "morte")) exit;

var _string = string("{0}\n[c_yellow]{1}", global.pontos, global.maxpoints);
var _configs = "[fnt_inicio][scale, .15][fa_left][fa_top]";

draw_text_scribble(0, 0, _configs + _string);
