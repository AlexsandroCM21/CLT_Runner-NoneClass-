// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@return {Any} _var value or noone
///@description Essa função irá verificar se a instancia em questão tem a variável que procura.
///@desc Se a instancia tem essa variável, então ela irá retornar o valor da variável. 
///@desc Senão tem, ela irá retornar noone
///@param {_instance} Instance.Id A instancia que vai ser verificada
///@param {_var} String A variável em formato de string que deseja ver o valor
function instancia_get_value(_instance, _var){
    if(variable_instance_exists(_instance, _var)){
        return variable_instance_get(_instance, _var);
    }
    return noone
}


///@desc Essa função irá procurar se existe alguma instancia na room com
///@desc uma variável que tenha um valor especifico. Vai voltar um valor booleano.
///@param {Id.Instance} _instance A instancia que vai ser procurada
///@param {String} _variavel_name Colocando a identificação de uma variável por string.
///@param {Any} _valor O valor que vai ser procurado nas instancias.
///@return {Bool} Se tiver alguma instância na room com essa variável e esse valor, volta true. Se não, false
function instancia_exists_value(_instance, _variavel_name, _valor) {
    //Se não existe nenhuma instancia como essa já vamos retornar false
    if (instance_exists(_instance)) return false;
    
    #region COLETANDO AS INSTANCIAS
    
    //Pegando o número dessas instancias na room
    var _ninstancias = instance_number(_instance);
    
    //Pegando as instancias da room
    var _instancias = [];
    //Colocando todos as instancias da room no _instancias
    for (var _i=0; _i<_ninstancias; _i++){
        array_push(_instancias, instance_find(_instance, _i));
    }
    
    #endregion COLETANDO AS INSTANCIAS
    
    ///////////VERIFICANDO OS VALORES DAS INSTANCIAS/////////////////////
    
    for (var _i = 0; _i < array_length(_instancias); _i ++) {
        //A instancia em questão
        var _obj = _instancias[_i];
        //O valor da instancia
        var _vlr = variable_instance_get(_obj, _variavel_name);
        
        //Se o valor deste objeto for igual ao valor que o dev colocou, 
        // vamos dar o retorno de true
        if (_vlr == _valor) {
            return true;
        }
        
    }
    
    //Se nada ocorrer até aqui, vamos dar o retorno de false
    return false;
    
}


///@return {Array} Array or noone
///@description Essa função procurará a instancia(dentro do _instance)
///@desc que tem a _variavel igual ao _valor 
///@param {Id.Instance}  _instance A instancia que vai ser procurada
///@param {String} _variavel A variável em formato de string que deseja ver o valor
///@param {Any} _valor O valor que tem que ser igual a variável
function instancia_equals_value(_instance, _variavel, _valor){
    //Se a instancia não existir, não tem para que continuar a função
    if (!instance_exists(_instance)) return undefined;
    
    //Pegando o número dessas instancias na room
    var _ninstancias = instance_number(_instance);
    
    //Pegando as instancias da room
    var _instancias = [];
    //Colocando todos as instancias da room no _instancias
    for (var _i=0; _i<_ninstancias; _i++){
        array_push(_instancias, instance_find(_instance, _i));
    }
    
    //Pegando as instancias que tem o valor que queremos
    var _instancias_valores = []
    for (var _i=0; _i<array_length(_instancias); _i++){
        // O valor da variavel da instancia em questão
        var _vlr = instancia_get_value(_instancias[_i], _variavel);

        //Se o valor da instancia for igual ao _valor do dev, colocamos
        // a instancia dentro da variável.
        if (_vlr == _valor){
            array_push(_instancias_valores, _instancias[_i]);
        }
    }
    
    //Voltando a lista de valores
    return _instancias_valores;
}


///@description Essa função vai criar um objeto caso tenha outros objetos na room com um valor para ser determinado
///@param {Real} _x O x que o objeto vai ser criado
///@param {Real} _y O y que o objeto vai ser criado
///@param {String} _layer A layer em que o objeto vai ser criado
///@param {Id.Instance} _instance a instancia que vai ser criada
///@param {String} _nameval O nome da variável em formato de string
///@param {Any} _var O valor
function instancia_create_ifvalue(_x, _y, _layer, _instance, _nameval, _var){
    //instance_find(_instance)
    if(instance_exists(_instance)){
        var _num=instance_number(_instance);
        
        //Verifiando cada obj para ver se tem algum com o mesmo valor
        for(var _i=0; _i<=_num; _i++){
            var _inst=instance_find(_instance, _i);
            //Se tiver um valor não igual ao bagulho eu retorno
            if(instancia_get_value(_inst, _nameval)==_var){
                return noone;
            }
        }
        
        
    }
    var _a=instance_create_layer(_x, _y, _layer, _instance);
    return _a
}



///@description Verifica se o mouse está encostando na instância.
///@desc É para ser usada em instancias que tem uma sprite.
function instancia_mouse_meeting(_instance=instance_id){
    #region Variáveis
    
    //MINHA SPRITE
    var _sprite=_instance.sprite_index;
    
    ///PEGANDO A ORIGEM DA SPRITE DA INSTANCIA
    var _origin_x=sprite_get_xoffset(_sprite);
    var _origin_y=sprite_get_yoffset(_sprite);
    
    
    ///PEGANDO O TAMANHO DA SPRITE
    var _width=sprite_get_width(_sprite);
    var _height=sprite_get_height(_sprite);
    
    ///PEGANDO A LARGURA DA MINHA SPRITE DETERMINADA PELO ORIGIN
    //Largura da esquerda
    var _largl=_origin_x;
    //Largura da direita
    var _largr=_width-_origin_x;
    //Explicação: a largura da esquerda, como o game maker define a posição de fatores da 
    // esquerda para a direita, e o tamanho dela seria até a posição da origem, então a largura da 
    // esquerda teria o mesmo tamanho que o valor da posição horizontal da origem da sprite.
    // E a largura da direita teria o resto do tamanho.
    
    //PEGANDO A ALTURA DA MINHA SPRITE DETERMINADA PELO ORIGIN
    //Altura de cima
    var _altup=_origin_y;
    //Altura de baixo
    var _altdown=_height-_origin_y;
    //A explicação é a mesma da largura.
    
    //A posição horizontal que o objeto está na room com sua largura real
    var _x=[x-_largl, x+_largr];
    
    //A posição vertical que o objeto está na room com sua altura real
    var _y=[y-_altup, y+_altdown];
    
    //CONDIÇÕES, verificam se o mouse está dentro da instancia
    var _condicao_x = (mouse_x>_x[0] and mouse_x<_x[1]);
    var _condicao_y = (mouse_y>_y[0] and mouse_y<_y[1]);
    

    #endregion Variáveis
    
    
    //Se eu estou com o mouse dentro da instancia, tanto horizontal tanto vertical,
    //vamos voltar com true
    if(_condicao_x and _condicao_y){
        return true;
    }
    //Senão, vamos retornar false
    else{
        return false;
    }
    
    
}
