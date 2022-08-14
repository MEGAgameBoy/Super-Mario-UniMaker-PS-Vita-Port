var total,file,i;

file = file_text_open_read(argument0);

//Se não for possível carregar o arquivo
if(file < 0){
    show_message("ERROR: UNI-004");
}
else{
    
    //Ler...    
    var ver = file_text_read_string(file);
    
    global.build = file_text_read_string(file);
    file_text_readln(file);
    
    //Criar DS Map
    var loadmap = ds_map_create();
    ds_map_read(loadmap,file_text_read_string(file));
    file_text_readln(file);
        
    //INFORMAÇÕES DO NÍVEL
    //----------------------------------------------------------------
    
    //Info (1.S) [Adaptação automática)
    var fn = string_copy(filename_name(fname),1,string_length(filename_name(fname))-5); 
    global.uni_level_name = string_copy(fn,1,26);
    global.uni_level_author = "UNIMAKER 1.S";
    global.uni_level_icon = 0;
    global.uni_level_password = "";
    global.uni_level_passwordon = 0;    
    
    //Altura da sala
    room_height = real(ds_map_find_value(loadmap,"HEIGHT"));
    
    if(real(ds_map_find_value(loadmap,"HEIGHT")) != 480)
        room_height = 576;
    
    //Estilo do nível
    global.uni_level_style = real(ds_map_find_value(loadmap,"STYLE"));

    //Efeito do nível
    global.uni_level_effect = real(ds_map_find_value(loadmap,"EFFECT"));

    //Sombra do nível
    global.shadow = real(ds_map_find_value(loadmap,"SHADOW"));
        
    //Tamanho do nível
    global.uni_level_size = real(ds_map_find_value(loadmap,"SIZE"));
    
    //Tempo do nível
    global.uni_level_time = real(ds_map_find_value(loadmap,"TIME"));

    //Música do nível
    global.uni_level_music = real(ds_map_find_value(loadmap,"MUSIC"));
    
    //Autoscroll do nível
    global.uni_level_autoscroll = real(ds_map_find_value(loadmap,"SCROLL"));
    
    //Destruir DSMAP
    ds_map_destroy(loadmap);
    
    //OBJETOS DO NÍVEL
    //----------------------------------------------------------------  
    
    //Criar 'DS List'
    global.uni_objects_datalist = ds_list_create();
    global.uni_readpos = 0;
        
    //Objetos do nível
    ds_list_read(global.uni_objects_datalist,file_text_read_string(file));
    
    //Fazer 'Loop' para totalizar a quantidade de objetos no nível
    for(i = 0; i < obj_uni_saveload_control.total_objects; i += 1){
        
        audio_master_gain(0);
        
        //LER a quantidade de objetos que existem
        total = ds_list_find_value(global.uni_objects_datalist,global.uni_readpos);
        
        //Incrementar posição dos dados salvos
        global.uni_readpos += 1;
        
        //Repetir criação de objetos de acordo com o total dos que existem
        repeat(total){
        
            //Carregar dados e criar objetos
            with(instance_create(0,0,obj_uni_saveload_control.objects[i])){
            
                event_user(1);
            }
        }
    }
    //Destruir 'DS List'
    ds_list_destroy(global.uni_objects_datalist);
}

instance_activate_object(obj_uni_ground)
with(obj_uni_ground)
    event_user(5);
    
file_text_close(file);
