/// @description Insert description here
// You can write your code in this editor

var _type = dd.type;

//Se for comida, vamos aumentar os pontos!
if (_type == "food") {
    global.pontos += dd.points;
}
//Se for inimigo, vamos matar o player >:)
else if (_type == "inimigo") {
    global.modo[1] = "morte";
    //Destruindo o player
    instance_destroy(other);
}



//Me matando após fazer os bagulhos
instance_destroy();


