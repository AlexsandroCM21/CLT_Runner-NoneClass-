// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@desc Um if que volta um valor na mesma linha em que foi chamado
///@param {Bool} condicao A condição que vai ser checada, tem que ser um valor bool
///@param {Any} _iftrue Se a condicao for verdadeiro, voltará isso aqui..
///@param {Any} _iffalse Se a condicao for falso, voltará isso aqui..
function verif_ifline(_condicao, _iftrue = true, _iffalse = false) {
    //Se a condição for verdadeira, vamos voltar o _iftrue
    if (_condicao) return _iftrue;
    //Se nada ocorrer até aqui(Indicando que é falso) vamos voltar o _iffalse
    return _iffalse;
}

