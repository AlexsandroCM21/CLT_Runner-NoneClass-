// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


stz = "Spider-Man PS4 é muito foda. \nGostaria de jogar em um PS4 algum dia";

///@desc Retorna um valor bool se tiver um certo texto na string
///@param {String} _string A string em questão
///@param {String} _text O texto que vai ser procurado dentro da string
function texto_in(_string, _text) {
    //Pegando o tamanho da minha string
    var _size_string = string_length(_string);
    
    //Pegando o tamanho do _text
    var _size_text = string_length(_text);
    
    //O index do texto
    var _indx_string = 0;
    
    //Passando por cada letra da string e comparando com o _text para ver se é igual
    for (var _i = 0; _i < _size_string; _i ++) {
        //Pegando o trecho de agora do meu texto
        var _trecho = string_copy(_string, _i, _size_text);
        
        //Comparando o trecho com _text e retornando true se for
        if (_text == _trecho) {
            return true;
        }
        
    }
    
    //Retornando false se nada ocorrer até essa parte do código
    return false;
}



///@desc Retorna a string colocada na função
///@param {String} _string A string em questão
///@param {String} argument As caracteres que vão ser removidas da string
function texto_remove(_string) {
    //Se tivermos só um argumento, vamos voltar UNDEFINED
    if (argument_count < 2) return undefined;
    
    var _new_string = _string;
    
    //Tirando os caracteres kakakakakaka
    for (var _i = 0; _i < argument_count; _i ++) {
        var _item = argument[_i + 1];
        
        _new_string = string_replace(_new_string, _item, "");
        
        ////Lendo letra por letra e tirando os caracteres indesejados
        //for (var _a = 0; _a < string_length(_string); _a ++) {
            //if (_a != )
        //}
    }
    
    return _new_string;
}

///@description Vai deixar cada inicial de cada palavra maiuscula
function texto_captalize(_string) {
    var _strs = string_split(_string, " ");
    
    var _new_string = "";
    
    for (var _i = 0; _i < array_length(_strs); _i++) {
        //Pegando a palvra da vez
        var _item = _strs[_i];
        
        //Pegando a primeira letra da palavra e deixando ela capitalizada
        var _letra = string_upper(string_copy(_item, 1, 1));
        
        //Pegando o resto da palavra
        var _resto = string_copy(_item, 2, string_length(_item)-1);
        
        _item = _letra + _resto;
        
        _new_string += _item + " ";
    }
    
    return _new_string
}



///@desc Vendo se a string é constituida por números 
///@desc (Se tiver um número e uma letra, não funcionará)
function texto_is_number(_string) {
    var _nums = "0123456789";
    
    _string = string(_string);
    
    //Se as _string for vazia, retorno false
    if (_string == "") return false;
    
    
    //Vai percorrer a _string
    for (var _a = 1; _a <= string_length(_string); _a ++) {
        var _letter = string_copy(_string, _a, 1);
        
        var _encontrou = false;
        
        //Vai percorrer os _nums e criar uma lista de números para verificar
        for (var _b = 1; _b <= string_length(_nums); _b ++) {
            var _num = string_copy(_nums, _b, 1);
            
            
            //Se a letra for igual ao numero, ent para esse for
            if (_letter == _num) {
                _encontrou = true;
                break;
            }
        }
        //Se não encontrei nada, retorno false;
        if (!_encontrou) {
            return false;
        }
    }
    return true;
}


///@desc Coloque uma string, se for um número,
///@desc ela voltará o número em formato de número. Se não for número,
///@desc ela vai voltar a string
function texto_to_real(_string) {
    if (!texto_is_number(_string)) return _string;
    
    //Vai voltar 0 se for uma string e um número se for, bem, um número!
    var _real = real(_string);
    
    //Se a versão do real da _string for igual a ela mesma.
    //Então vamos voltar o _real
    
    return _real;
}

//show_message(texto_remove("Bagulhado alado palavra []-=", "[", "="))
