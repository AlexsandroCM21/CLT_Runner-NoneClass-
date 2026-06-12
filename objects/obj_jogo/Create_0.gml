/// @description Insert description here
// You can write your code in this editor

foods_spawn = ["burger", "fritas", "chocolate", "coxinha"];
inimigos = ["clt"]


spawn_min = 30;
spawn_max = game_get_speed(gamespeed_fps) * 1.5;
time_to_spawn = spawn_max;
delay_to_spawn = time_to_spawn;

foodvel = 1;

criei_morte = false;

//Serve para saber se podemos criar os alimentos
pode_criar = true;

metodo_criar_alimentos = function() {
    //A porcentagem de criar uma comida ou uma CLT (A porcentagem é a de criar comida)
    var _wicth = randam_porcentagem(75);
    
    var _spawn = verif_ifline(_wicth, foods_spawn, inimigos);
    
    var _dado = randam_choice(_spawn);
    
    var _food = instance_create_layer(0, -32, "foods", obj_food);
    _food.ddname = _dado;
    _food.vspeed = foodvel;
    

}

metodo_atualiza_vel = function() {
    if (!pode_criar) return;
    var _layer = layer_get_id("Background");
    
    layer_vspeed(_layer, global.speed);
    with (obj_food) {
    	vspeed = global.speed
    }
    
}

//Teste para criar comida
alarm[0] = 20;


//Alarme para aumentar a pontuação
time_to_alarm = game_get_speed(gamespeed_fps)
alarm[1] = time_to_alarm;

//Aumentando a velocidade
alarm[2] = time_to_alarm