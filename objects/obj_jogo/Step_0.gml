/// @description Insert description here
// You can write your code in this editor

delay_to_spawn --;

if (delay_to_spawn <= 0 and pode_criar) {
    
    metodo_criar_alimentos();
    delay_to_spawn = time_to_spawn;
}

//Se meus pontos atuais forem maiores que os meus pontos máximos, vamos alterar os maxpoints
if (global.pontos > global.maxpoints) {
    global.maxpoints = global.pontos;
}

metodo_atualiza_vel();

//Limitando a velocidade de spawn
time_to_spawn = clamp(time_to_spawn, spawn_min, 10000000000000000000000000);

//Se morri, vamos parar tudo!
if (modo_equals(, "morte")) {
    var _layer = layer_get_id("Background");
    var _back = layer_background_get_id(_layer);
    
    //Zerando a velocidade da room.
    layer_background_speed(_back, 0);
    layer_vspeed(_layer, 0);
    
    //Desligando o criamento de comida e clts
    pode_criar = false;
    
    //Se comidas existem, vamos zerar a velocidade delas
    if (instance_exists(obj_food)) obj_food.speed = 0;
    
    //Se eu não criei o modo de morte, vamos criar
    if (!criei_morte and !instance_exists(obj_morte)){
        instance_create_layer(x, y, "hud", obj_morte);
        criei_morte = true;
    }
}
