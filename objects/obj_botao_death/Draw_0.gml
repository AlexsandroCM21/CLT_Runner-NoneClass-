/// @description Insert description here
// You can write your code in this editor

draw_self();

var _configs = "[fnt_death][scale, .2][fa_middle][fa_center]";

var _string = dd.text;

var _text = string("{0}{1}", _configs, _string);

draw_text_scribble(x, y, _text);