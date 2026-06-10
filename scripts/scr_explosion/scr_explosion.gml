// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function explosao_particulas(_count=200, _alvo=noone, _cor=c_white){
    repeat(_count){
    	var _part=instance_create_depth(x, y, depth-1, obj_partexplosion);
        _part.speed=random_range(3.1, 5);
        _part.direction=random_range(0, 359);
        _part.image_blend=_cor;
        _part.alvo=_alvo;
    }
}