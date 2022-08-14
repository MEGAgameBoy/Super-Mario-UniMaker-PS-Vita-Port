/*
    Arguments:
        0 fname
    
    Returns:
        loads all the objects
*/

var total,file,i;

file = file_text_open_read(argument0);

//Se não for possível carregar o arquivo
if(file < 0){
    show_message("ERROR: UNI-004");
}
else{
    //Estilo do nível
    global.uni_level_style = real(file_text_read_string(file));
    file_text_readln(file);

    //Tamanho do nível
    global.uni_level_size = real(file_text_read_string(file));
    file_text_readln(file);

    //Tempo do nível
    global.uni_level_time = real(file_text_read_string(file));
    file_text_readln(file);

    //Música do nível
    global.uni_level_music = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Autoscroll do nível
    global.uni_level_autoscroll = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Criar 'DS List'
    global.uni_objects_datalist = ds_list_create();
    global.uni_readpos = 0;
    
    //Objetos do nível
    ds_list_read(global.uni_objects_datalist,file_text_read_string(file));
    
    /*
    for(i=0;i<ds_list_size(global.uni_objects_datalist);i+=1)
    {
        show_debug_message(ds_list_find_value(global.uni_objects_datalist,i))
    }
    */
    
    //Fazer 'Loop' para totalizar a quantidade de objetos no nível
    for(i = 0; i < obj_uni_saveload_control.total_objects; i += 1){
        
        //LER a quantidade de objetos que existem
        total = ds_list_find_value(global.uni_objects_datalist,global.uni_readpos);
        
        //Incrementar posição dos dados salvos
        global.uni_readpos += 1;
        
        //Repetir criação de objetos de acordo com o total dos que existem
        repeat(total){
        
            //Carregar dados e criar objetos
            with(instance_create(0,0,obj_uni_saveload_control.objects[i]))
                event_user(1);
        }
    }
    //Destruir 'DS List'
    ds_list_destroy(global.uni_objects_datalist);
    
    //Desenho
    with(obj_uni_parent_save){
        x_draw = x;
        y_draw = y;
    }
}
file_text_close(file);
