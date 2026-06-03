// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function fct_modo_equals(_mode0 = noone, _mode1 = noone) {
    //Sair se os bagulho for noone
    if (_mode0 == noone and _mode1 == noone) return undefined;
    
    //O valor booleano que vai voltar
    var _bool = 0;
    
    //Condições para que eu volte true ou false
    var _condicao0 = (global.modo[0] == _mode0 or _mode0 == noone)
    var _condicao1 = (global.modo[1] == _mode1 or _mode1 == noone);
    
    //Se, as condições forem favoraveis, o meu _bool vai ser true
    _bool = (_condicao0 and _condicao1);
    
    return _bool;
}

//Função para saber se a animação da sprite acabou
function acabou_animacao() {
    var _spd_img=sprite_get_speed(sprite_index) / FPS;
    if(image_index+_spd_img>=image_number){
        return true;
    }
}