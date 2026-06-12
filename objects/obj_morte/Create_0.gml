/// @description Insert description here
// You can write your code in this editor


//Verificar se eu já criei os botões da morte
criado_botoes = false;

alpha_red = 0;
alpha_red_max = .55;

//Salvando informações após o obj_morte ser criado.
// Ou seja, quando o player morrer, os dados vão ser salvos.
save();

metodo_criar_botoes = function(_witch = "respawn", _yadd = 0) {
    var _x1 = room_width/2;
    
    //Criando o botão de restart
    var _dtbt = instance_create_layer(_x1, 150 + _yadd, "hud", obj_botao_death);
    _dtbt.ddname = _witch;
}

metodo_criar_botoes("respawn");
metodo_criar_botoes("opcoes", 64);
