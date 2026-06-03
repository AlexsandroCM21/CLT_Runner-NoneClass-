/// @description Insert description here
// You can write your code in this editor
draw_self();


var _configs = "[fa_left][fa_middle]";

//Vendo se o MEU arquivo de save existe
var _condicao = (file_exists(string("save({0}).json", slotsave)));

//Pegando o meu texto se minha condição for favoravel
var _string = verif_ifline(_condicao, 
    string("0{0} - Continue", slotsave), string("0{0} - New Game", slotsave));


var _text = string("{0}{1}", _configs, _string);

draw_text_scribble(x, y, _text);
