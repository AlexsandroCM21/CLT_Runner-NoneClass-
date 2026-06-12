/// @description Insert description here
// You can write your code in this editor

//Pegando os inputs
metodo_keys();

image_speed = global.speed;

///O lado do meu personagem vai alterar quando apertar para direita ou para esquerda
if (right) lado = 1;
else if(left) lado = 0;

//A minha posição horizontal vai ser definida pelo meu lado de agora
x = posicoes[lado];

//Alterando o lado que ele ta olhando de acordo com o lado
image_xscale = verif_ifline(lado, -1, 1);

