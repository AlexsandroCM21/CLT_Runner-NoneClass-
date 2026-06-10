/// @description Insert description here
// You can write your code in this editor
metodo_pega_input();

//Prosseguindo a cutscene
if ((jump or right) and index < image_number-1) index ++;

//Voltando a cutscene
if (left and index > 0) index--;


image_index = index;


//Se o index da imagem chegou ao fim. Vamos fuder!
if (index >= image_number-1) {
    global.modo = [rm_hub, "home"];
    global.cutscene_inicio = true;
    save();
    transicao_create([sq_fadein, sq_fadeout], , rm_game);
}
