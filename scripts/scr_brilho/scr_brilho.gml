// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Feito para ser usado no create
function create_brilho(){
    cor_brilho=c_white;
    alpha_brilho=0;
}

//feito para ser usado no step
function step_brilho(_increase=.1){
    alpha_brilho=lerp(alpha_brilho, 0, _increase);
}

//Usando o efeito brilho
function efeito_brilho(_intensidade=1, _cor=c_white){
    cor_brilho=_cor;
    alpha_brilho=_intensidade;
}

//Utilize-o depois de ter desenhando seu player
function draw_brilho(_sprite=sprite_index, _index=image_index, _x=x, _y=y, 
    _xscale=image_xscale, _yscale=image_xscale, _angle=image_angle, _color=image_blend,
    _alpha=image_alpha){
    
    //Shader te deixar de cor k.
    shader_set(sh_brilho);
    draw_sprite_ext(_sprite, _index, _x, _y, _xscale, _yscale, _angle, cor_brilho, alpha_brilho);
    shader_reset();
}