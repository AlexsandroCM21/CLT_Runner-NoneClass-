// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@desc Quando o _val fica maior que o _max, ele volta para o _min,
///@desc e a mesma coisa ocorre se _val fica menor q o _min
///@param {Real} _val O valor que vai ser comparado.
///@param {Real} _min O valor minimo que vai ser trocado
///@param {Real} _max O valor máximo que vai ser trocado
function mathe_limit(_val, _min, _max) {
    
    //Se o valor dado pelo usuário for maior que o _max, vamos retornar o _min
    if (_val > _max) {
        return _min;
    }
    //Se o valor for menor que o _min, vamos retornar o _max
    else if (_val < _min){
        return _max;
    }
    
    
    //Retornando o _val se nada ocorrer até aqui
    return _val;
}


///@desc Regra de três padrão. A está para B, assim como C está para...
///@param {Real} A A está para B
///@param {Real} B B está para A
///@param {Real} C Assim como C está para o resultado dessa função
function mathe_rule_three(_a, _b, _c) {
    
    //O valor que vai ser dado
    var _d = 0;
    
    //Fazendo a equação da regra de três padrão
    _d = (_c*_b)/_a;
    
    return _d;
}




