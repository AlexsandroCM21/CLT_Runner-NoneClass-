/// @description Insert description here
// You can write your code in this editor

indo = false;

metodo_verify_room = function(_mode0, _mode1) {
    //Se não for igual, então vamos voltar
    if (!fct_modo_equals(_mode0, _mode1) or indo) return;
    
    //Se a minha room de agora não for igual a room que tem que ser,
    // vamos fazer ela ser.
    if (room != _mode0) {
        cria_transicao_inicia(_mode0);
        //Fazendo com que eu não atualize mais este metodo
        indo = true;
    }
    
    //Retornando true se o modo for igual o de agora
    if (fct_modo_equals(, _mode1)) {
        return true;
    }
    
}
