// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Randandan

///@return {Bool} true or false
///@desc Volta true se a porcentagem for menor a que o que o programador tenha colocado
///@param {Int} _porcent Um valor de 1 a 100
function randam_porcentagem(_porcent){
    var _valor=irandom_range(1, 100);
    
    if(_valor<_porcent){
        return true;
    }
    return false;
}

///@desc Diferente de antecessor choose, 
///@desc ele funciona com uma array colocada diretamente nele
function randam_choice(_array){
    return _array[irandom_range(0, array_length(_array)-1)];
    
}