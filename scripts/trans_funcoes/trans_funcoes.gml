// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@desc Criando uma transição para que algo aconteça após a transição
///@param {Array} _sequences Uma lista das sequencias que vão aparecer. 0 - Abertura; 1 - Fechamento
///@param {Function} _funcao Uma função que a transição pode fazer. (A FUNÇÃO VAI ACONTECER ANTES DA MUDANÇA DE ROOM)
///@param {Room} _destino A room que vai ser mudada com passar da transicao.
///@param {Bool} _pode_escurecer Saber se a tela pode escurecer, normalmente usado para que a tela não pisque na transição de rooms
function transicao_create(_sequences = [sq_transicao_nn1, sq_transicao_nn2], 
    _funcao = noone, _destino = noone, _pode_escurecer = true) {
    
    #region Verificaradores
    //Uma mensagem de erro para tocar quando o dev fizer caquinha
    var _error = "";
    
    //Se não for uma array, vamos retornar
    if (!is_array(_sequences)) 
        _error = "A sequência fornecida não é uma array!\nVocê tem que colocar uma " +
            "sequencia de abertura e uma de fechamento";
    
    //Se a array das sequencias for vazia, vamos retornar
    if (array_length(_sequences) < 2) _error = "Precisamos de duas sequências na array!";
    
    //Se o destino e a função for vazia, vamos retornar a função
    if (_destino == noone and _funcao == noone) {
        _error = "Sem destino e sem função! Coloque pelo menos uma delas para o código rodar!";
    }
    
    //Se tiver um erro pendente, vamos retornar e falar o erro pro DEV
    if (_error != "") {
        show_message(_error);
        return;
    }
    
    #endregion Verificaradores
    
    
    
    //Os dados que o obj_transicao vai receber
    var _struct = {
        destino :   _destino,
        funcao  :   _funcao,
        //As sequences que o obj vai receber
        seqs    :   _sequences
    };
    
    //Se o obj_trasicao já existe, não tem pra que criar novamente
    if (instance_exists(obj_transicao)) {
        show_debug_message("The obj_transicao has already been created!");
        return;
    }
    
    //Criando o objeto que vai comandar a sequencia
    var _obj = instance_create_layer(0, 0, layer, obj_transicao, _struct);
    
}



