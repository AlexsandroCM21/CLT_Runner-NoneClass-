/// @description Insert description here
// You can write your code in this editor
alvo=noone
addscale=random_range(-0.001, 0.001)
voltar=false;



metodo_sumir=function(){
    image_alpha-=random_range(0.01, 0.05);
    image_xscale+=addscale;
    image_yscale=image_xscale;
    
    if(image_alpha<=0)instance_destroy();
}

metodo_move_to_player=function(){
    //Variáveis locais
    var vel=8;
    var _x1=alvo.x;
    var _y1=alvo.y-10;
    image_yscale=1;
    //Fazendo a particula como uma linha
    image_xscale=lerp(image_xscale, speed*2, .1)
    image_angle=direction;
    
    image_alpha = speed/vel;
    
    //Se eu não estou voltando, vou diminuindo a velocidade
    if(!voltar){
        speed-=0.08;
        //Se a velocidade for menor ou igual a 0, vou começar a voltar
        if(speed<=0)voltar=true;
    }
    
    //Se eu to voltando, minha direção é o player e minha velocidade
    //aumenta também
    if(voltar){
        direction=point_direction(x, y,_x1, _y1);
        image_angle=direction;
        speed=lerp(speed, vel, .1);
        
        //Morro quando encosto no player :)
        //E também pegando se id
        var _player=instance_place(x, y, obj_player);
        if(_player){
            with(_player){
                var _xscale=random_range(.1, .3);
                var _yscale=random_range(.1, .3);
                efeito_squash(1+_xscale, 1+_yscale);
                efeito_brilho(random_range(.9, 1.2), c_white)
            }
            screenshake(2.5)
            instance_destroy();
            
        }
    }
    
}

estado=metodo_sumir;