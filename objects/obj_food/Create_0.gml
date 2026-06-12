/// @description Insert description here
// You can write your code in this editor

dburger = {
    sprite  :   spr_fd_burger,
    points  :   4,
    type    :   "food"
}

dfritas = {
    sprite  :   spr_fd_fry,
    points  :   3,
    type    :   "food"
}

dchocolate = {
    sprite  :   spr_fd_chocola,
    points  :   2,
    type    :   "food"
}

dcoxinha = {
    sprite  :   spr_fd_littlecoxa,
    points  :   1,
    type    :   "food"

}

dclt = {
    sprite  :   spr_clt,
    points  :   -1,
    type    :   "inimigo"
}

dados = {
    burger      :   dburger,
    fritas      :   dfritas,
    chocolate   :   dchocolate,
    coxinha     :   dcoxinha,
    clt         :   dclt
}

ddname = dados.burger;
dd = dados[$ddname]
pontos = 0;

x2 = 1;

vspeed = 1;


posicoes = [24, 160]

lado = choose(false, true);
//Pegando minha posição horizontal
x = posicoes[lado];