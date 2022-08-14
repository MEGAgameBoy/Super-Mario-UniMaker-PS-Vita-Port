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

    //Info (1.S) [Adaptação automática)
    global.build = "[1.0]";
    var fn = string_copy(filename_name(fname),1,string_length(filename_name(fname))-4); 
    global.uni_level_name = string_copy(fn,1,26);
    global.uni_level_author = "UNIMAKER 1.0";
    global.uni_level_icon = 0;
    global.uni_level_password = "";
    global.uni_level_passwordon = 0;
    global.uni_level_effect = 0;
    room_height = 576;
    
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
            };
        }
    }
    //Destruir 'DS List'
    ds_list_destroy(global.uni_objects_datalist);
}


instance_activate_object(obj_uni_ground)
with(obj_uni_ground)
    event_user(5);
    
file_text_close(file);
