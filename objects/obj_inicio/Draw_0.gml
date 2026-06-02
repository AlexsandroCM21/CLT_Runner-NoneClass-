/// @description Insert description here
// You can write your code in this editor
draw_self();

var _configs = "[fnt_inicio][fa_middle][fa_center]";
var _adds = "";
for (var _i = 0; _i < array_length(opcoes); _i ++) {
    if (_i == index) _adds = "[scale, .5][c_red]";
    else _adds = "[scale, .5][c_red]";
    //Pegando a opcao de agora
    var _string = opcoes[_i];
    
    var _texto = string("{0}{1}{2}", _adds, _configs, _string);
    
    //draw_text_scribble()
}
