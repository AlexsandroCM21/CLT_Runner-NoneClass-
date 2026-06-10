// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@desc Essa função serve para ver se a animação da sprite de uma instancia acabou.
function ats_acabou_animacao(_id = id) {
    var _spd_img = sprite_get_speed(_id.sprite_index) / game_get_speed(gamespeed_fps);
    if ((_id.image_index + _spd_img) >= _id.image_number){
        return true;
    }
}

///@desc Vai voltar o tamanho da sprite em formato de array [width, height]
///@param {ID} _id A instancia que vamos procurar o tamanho
function ats_sprite_sizes(_id = id) {
    //Pegando a sprite do id
    var _sprite = _id.sprite_index;
    
    //Pegando as medidas da sprite
    var _width = sprite_get_width(_sprite);
    var _height = sprite_get_height(_sprite);
    
    return [_width, _height];
}


///@desc Volta o valor necessário para que o image_scale dê exatamente o que precisa.
///@param {Any} _sprite_sizes Pode ser tanto uma sprite, tanto quanto 
function ats_back_scale(_sizes, _w, _h) {
    var _height;
    var _width;
    var _error = "";
    
    //Se a sprite for uma array
    if (is_array(_sizes)) {
        _width = _sizes[0];
        _height = _sizes[1];
    }
    else {
        //_height = sprite_get_height(_sizes);
        //_width = sprite_get_width(_sizes);
        _error = "O valor do _sizes não é uma array! Coloque na array o valor do width e do height!";
    }
    
    //Voltando se o erro ocorreu
    if (_error != "") {
        show_message(_error);
        return;
    }
    
    var _xscale = (_w/_width);
    var _yscale = (_h/_height);
    //show_message(_width)
    var _send = [_xscale, _yscale];
    
    return _send;
}