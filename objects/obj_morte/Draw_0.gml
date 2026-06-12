/// @description Insert description here
// You can write your code in this editor
draw_self();

//Criando o bagulho vermelho
draw_sprite_ext(spr_blanko, 0, 0, 0, 20, 20, 0, #9E0B0F, alpha_red);

#region PERDEU PLAYBOY
var _configs = string("[fnt_death][scale, 0.35][fa_center][fa_middle]");
var _string = "PERDEU PLAYBOY!";

var _text = string("{0}{1}", _configs, _string);

var _x = room_width/2;
var _y = 80;
draw_text_scribble(_x, _y, _text);

#endregion PERDEU PLAYBOY

#region SCORE

var _adds = string("[scale, .2]");
_string = string("Score: [c_yellow]{0}", global.pontos);
_text = string("{0}{1}{2}", _configs, _adds, _string);

draw_text_scribble(_x, _y+12, _text);

#endregion SCORE


