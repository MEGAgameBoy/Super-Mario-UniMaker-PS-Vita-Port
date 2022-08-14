/*
    Arguments:
        0 fname
    
    Returns:
        saves all the objects
*/

var file,i;

file = file_text_open_write(argument0);

//Se não for possível salvar o arquivo
if(file < 0)
    show_message("ERROR: UNI-003");
else{
    //Estilo do nível
    file_text_write_string(file,(string(global.uni_level_style)));
    file_text_writeln(file);

    //Tamanho do nível
    file_text_write_string(file,(string(global.uni_level_size)));
    file_text_writeln(file);
    
    //Tempo do nível
    file_text_write_string(file,(string(global.uni_level_time)));
    file_text_writeln(file);

    //Música do nível
    file_text_write_string(file,(string(global.uni_level_music)));
    file_text_writeln(file);
    
    //Autoscroll do nível
    file_text_write_string(file,(string(global.uni_level_autoscroll )));
    file_text_writeln(file);

    //Criar 'DS List'
    global.uni_objects_datalist = ds_list_create();
    
    //Fazer 'Loop' para totalizar a quantidade de objetos no nível
    for(i = 0; i < obj_uni_saveload_control.total_objects; i += 1){
        
        //ESCREVER a quantidade de objetos que existem
        ds_list_add(global.uni_objects_datalist,instance_number(obj_uni_saveload_control.objects[i]));
    
        //Salvar dados
        with(obj_uni_saveload_control.objects[i])
            event_user(0);
    }
    
    /*
    for(i=0;i<ds_list_size(global.uni_objects_datalist);i+=1)
    {
        show_debug_message(ds_list_find_value(global.uni_objects_datalist,i))
    }
    */

    //Objetos do nível
    file_text_write_string(file,ds_list_write(global.uni_objects_datalist));
    
    //Destruir 'DS List'
    ds_list_destroy(global.uni_objects_datalist);
}
file_text_close(file);
