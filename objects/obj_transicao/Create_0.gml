/// @description Insert description here
// You can write your code in this editor

//Quando um objeto é persistente, ele fica em todas as rooms apartir de agora
persistent = true;

//Se estou na abertura ou no fechamento da transição
indo = true;

//Delay para fazer o que precisa ser feito
delay = 5;

//////O escurecer SERVE PARA SABER SE VAMOS DEIXAR EM TELA PRETA UM POUCO QUANDO TROCAMOS DE CENA
/// algo "ruim" que esse 'escurecer' pode fazer, é que ele escurece a camera inteira. Mas, 
/// imagino que isso não será um problema.
pode_escurecer = true;
escurecer = false;
cor_escuro = c_black;


abertura = noone;
fechamento = noone;

sequence = noone;

//Metodo para criar sequencias
metodo_create_sequence = function(_sqid) {
    //Criando uma layer para a minha transição se eu não tiver uma layer para isso
    if (!layer_exists("transicao")) {
        layer_create(-100, "transicao");
    }
    
    //Posições da camera
    var _cam_x = camera_get_view_x(view_camera[0]);
    var _cam_y = camera_get_view_y(view_camera[0]);
    
    return layer_sequence_create("transicao", _cam_x, _cam_y, _sqid);
    //show_message(sequence.speed)
}


