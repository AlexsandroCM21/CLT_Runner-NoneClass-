// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@desc Fica transitando entre 1 e -1
///@param {Real} _quant O multiplicador, fará com que o retorno tenha um número mais adequado
///@param {Real} _freq  A frequência que a o número vai transitar
function efeito_sinwave(_quant = 1, _freq = 1) {
    //current_time é em milisegundos, sendo dividido por 1000 o transforma em segundos
    var _sin = _quant * sin(_freq * current_time / 1000);
    
    return _sin;
}

///@desc Fica indo de cima a baixo com um efeitinho maneiro :)
///@param {Real} _y2 Um ponto fixo para que a instancia possa completar sua animação.
///@param {Real} _quant O multiplicador, fará com que o retorno tenha um número mais adequado
///@param {Real} _freq  A frequência que a o número vai transitar
///@param {Real} _ammount O quão rápido a instancia vai para sua posição sin (NÃO MEXER)
function efeito_sinwave_vertical(_y2, _quant = 1, _freq = 1, _ammount = .2) {
    var _sin = efeito_sinwave(_quant, _freq);
    
    var _y = (_y2) + (_sin);
    
    
    y = lerp(y, _y, _ammount);
}

///@desc Fica indo para equerda e direita com um efeitinho maneiro :)
///@param {Real} _x2 Um ponto fixo para que a instancia possa completar sua animação.
///@param {Real} _quant O multiplicador, fará com que o retorno tenha um número mais adequado
///@param {Real} _freq  A frequência que a o número vai transitar
///@param {Real} _ammount O quão rápido a instancia vai para sua posição sin (NÃO MEXER)
function efeito_sinwave_horizontal(_x2, _quant = 1, _freq = 1, _ammount = .2) {
    var _sin = efeito_sinwave(_quant, _freq);
    
    var _x = (_x2) + (_sin);
    
    
    x = lerp(x, _x, _ammount);
}