/// @description Insert description here
// You can write your code in this editor
draw_self();

var _string = "";
var _texto = string("");
var _configs = "[fnt_inicio][fa_middle][fa_center]";
var _adds = "";


//Se não estiver no home, vamos falar que se apertar esc vamos voltar
if (!modo_equals(, "home")) {
    _configs = "[fnt_inicio][fa_left][fa_up][scale, .2]";
    _string = "Aperte ESC para voltar ao inicio...";
    
    _texto = string("{0}{1}", _configs, _string);
    
    draw_text_scribble(0, 0, _texto);
}


_configs = "[fnt_inicio][fa_middle][fa_center]";
_adds = "";

//Desenhando todas as opções
for (var _i = 0; _i < array_length(opcoes); _i ++) {
    if (_i == index) _adds = "[scale, .25][c_red]";
    else _adds = "[scale, .25][c_white]";
    //Pegando a opcao de agora
    _string = opcoes[_i];
    
    _texto = string("{0}{1}{2}", _adds, _configs, _string);
    
    var _x = (room_width/2);
    var _y = 135;
    
    var _dist = 35;
    
    draw_text_scribble(_x, _y + (_dist*_i), _texto);
}
