/// @description Insert description here
// You can write your code in this editor

//Qual lado que o player está
lado = 0;

//Posições horizontais
posicoes = [0, 160];


metodo_keys = function() {
    enter = keyboard_check_pressed(vk_enter);
    down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
    left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
    right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
    
}
metodo_keys();