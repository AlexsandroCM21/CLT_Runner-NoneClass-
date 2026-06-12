/// @description Insert description here
// You can write your code in this editor

redefinindo_globais();

opcoes = [];
index = 0;

//Verificando se eu já criei os botões
criado_botoes = false;

#region METODOS

metodo_keys = function() {
    enter = keyboard_check_pressed(vk_enter);
    down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
}

metodo_create_bt = function(_slot) {
    var _bt = instance_create_layer(-220, 0, "botoes", obj_save);
    _bt.slotsave = _slot;
    
    
}

#endregion METODOS


#region ESTADOS

estado_inicio = function() {
    opcoes = ["Jogar", "Opções", "Sair do jogo"];
    
    //Resetando o botões criados
    criado_botoes = false;
    
    //Se eu apertei enter
    if (enter) {
        //Switch's, possibilidades que o index pode ter
        switch(index) {
            //Jogar
            case(0):
                global.modo = ["inicio", "save"];
            break;
        }
    }
    
    
    //Mudando o index
    if (up) index --;
    else if (down) index ++;
    
    
    //Limitando o valor do index
    index = mathe_limit(index, 0, array_length(opcoes)-1)
    //clamp(index, 0, array_length(opcoes)-1);
    
}

estado_save = function() {
    //Esvaziando as opções
    opcoes = [];
    
    //Criando os botões
    if (!criado_botoes) {
        metodo_create_bt(1);
        metodo_create_bt(2);
        metodo_create_bt(3);
        criado_botoes = true;
    }
}

#endregion ESTADOS

metodo_keys();