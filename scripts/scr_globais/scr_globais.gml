// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Saber se a cutscene inicial rodou ou não
global.cutscene_inicio = false;

global.modo = [rm_inicio, "home"];

global.slot_save = 1;

global.fullscreen = false;

function save() {
    //O caminho pro bagulho do save
    var _savefile = string("save({0}).json", global.slot_save);
    
    //Criando o meu buffer para salvar dados
    var _buffer = buffer_create(0, buffer_grow, 1);
    
    //O struct que vai ser salvo
    var _struct = {
        cutscene_inicio : global.cutscene_inicio
    }
    
    //Transformando o meu struct em json para salvar
    var _string = json_stringify(_struct);
    
    //Escrevendo o struct no buffer
    buffer_write(_buffer, buffer_string, _string);
    
    //Salvando em um arquivo
    buffer_save(_buffer, _savefile)
    
    //Deletando o buffer depois de tudo
    buffer_delete(_buffer);
}

function load() {
    //O caminho pro bagulho do save
    var _savefile = string("save({0}).json", global.slot_save);
    
    //Se o arquivo não existe, vamos parar esta função
    if (!file_exists(_savefile)) return;

    
    //Carregando o buffer
    var _buffer = buffer_load(_savefile);
    
    //Lendo os dados do meu buffer
    var _leitura = buffer_read(_buffer, buffer_string);
    
    //Transformando a leitura do buffer em struct
    var _struct = json_parse(_leitura);
    
    #region DADOS
    //Vendo se a cutscene inicio já iniciou
    global.cutscene_inicio = _struct.cutscene_inicio;
    
    
    #endregion DADOS
    
    //Depois de tudo, deletando meu buffer
    buffer_delete(_buffer);
}
