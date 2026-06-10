/// @description Insert description here
// You can write your code in this editor
//PEGANDO DD
dd = dados[$ddname]

sprite_index = dd.sprite;

//Pontos que o player vai ganhar quando me pegar
pontos = dd.points;


x2 = posicoes[lado];
//x = x2;

image_xscale = verif_ifline(lado, -1, 1);


efeito_sinwave_horizontal(x2, (5 * !image_xscale));

vspeed = 1;

//Se eu sair da room, vou me matar :)
if (y > room_height + ats_sprite_sizes()[1]) {
    instance_destroy();
}
