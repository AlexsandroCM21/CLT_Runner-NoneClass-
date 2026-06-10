/// @description Insert description here
// You can write your code in this editor

//Qual lado que o player está
lado = 0;

//Posições horizontais
posicoes = [16, 165];

y = 265;

metodo_keys = function() {
    enter = keyboard_check_pressed(vk_enter);
    down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
    left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
    right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
    
}
metodo_keys();


metodo_pontos = function() {
    delay_points--;
    
    //Se o delay zerar, vamos fazer o necessário
    if (delay_points <= 0) {
        //Resetando o delay dos pontos
        delay_points = time_to_points;
        
        global.pontos ++;
    }
}

time_to_points = 60;
delay_points = time_to_points;