/// @description Insert description here
// You can write your code in this editor
/*
image_alpha-=random_range(0.001, 0.01);
image_xscale+=addscale;
image_yscale=image_xscale;*/

estado();

//Se o alvo não existir, vamos para outro metodo
//if(!instance_exists(alvo) or alvo==noone)metodo_sumir();

if(instance_exists(alvo))estado=metodo_move_to_player;

