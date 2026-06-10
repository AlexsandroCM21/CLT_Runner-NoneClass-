/// @description Insert description here
// You can write your code in this editor

//Aberturda
if (indo){
    //Criando a minha sequencia se eu ainda não tiver uma variável definida pra sequencia
    if (!abertura) {
        abertura = metodo_create_sequence(seqs[0]);
        //A sequencia de agora
        sequence = abertura;
        //Deletando o primeiro espaço
        array_delete(seqs, 0, 1);
    }
    
    //Se a sequencia já terminou
    if (layer_sequence_is_finished(abertura)) {
        delay--;
        //Se o delay zerar, vamos fazer o que precisa ser feito
        if (delay <= 0) {
            //Se pudermos escurecer, vamos escurecer para que a tela preta não pisque
            if (pode_escurecer) escurecer = true;
            
            if (funcao != noone) funcao();
            if (destino != noone) room_goto(destino);
            
            //Marcar o encerramento da abertura
            indo = false;
            
            //Deletando a abertura
            alarm[0] = 2;
            //Desligando o escurecer
            alarm[1] = 2;
        }
    }
}
//Fechamento
else if (!indo) {
    if (fechamento == noone /*and abertura == noone*/){
        //Criando a próxima sequencia
        fechamento = metodo_create_sequence(seqs[0]);
        //A sequencia de fechamento
        sequence = fechamento;
        
        delay = 15;

    }
    
    //Se a sequencia já terminou
    if (layer_sequence_is_finished(fechamento)) {
        delay--;
        //Se o delay zerar, vamos limpar tudo.
        if (delay <= 0) {
            layer_sequence_destroy(fechamento);
            instance_destroy();
        }
    }
}



