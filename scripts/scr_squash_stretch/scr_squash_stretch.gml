// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Coloque no create
function inicia_efeito_squash(){
	xscale=1;
	yscale=1;
}

//Coloque onde você quiser meu nobre
function efeito_squash(_xscale=2, _yscale=2){//Coloque onde quiser meu nobre
	xscale=_xscale;
	yscale=_yscale;
}

//coloque no DRAW
function desenha_efeito_squash(){
	draw_sprite_ext(sprite_index, image_index, x, y, 
        xscale*sign(image_xscale), yscale, image_angle,
        image_blend, image_alpha);
}

//Coloque no step
function retorna_squash(_qtd=.1){
	xscale=lerp(xscale, 1, _qtd);
	yscale=lerp(yscale, 1, _qtd);	
}
