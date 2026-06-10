/// @description Insert description here
// You can write your code in this editor
//Desligando o alpha para que tenha uma animaçãozinha ao ser criada
image_alpha = 0;

dd_respawn = {
    text    :   "Jogar novamente",
    funcao  :   function(){
                    //Função para resetar o game
                    var _func = function(){game_restart()};
                    //Transição para o game_restart
                    transicao_create(, _func);
                }
}

dd_opcoes = {
    text    :   "Voltar ao opções",
    funcao  :   function(){
                    //Função para resetar o game
                    var _func = function(){global.modo = [rm_inicio, "home"]};
                    //Transição para o game_restart
                    transicao_create(, _func);
                }
}


todos_dd = {
    respawn :   dd_respawn,
    opcoes  :   dd_opcoes  
}
