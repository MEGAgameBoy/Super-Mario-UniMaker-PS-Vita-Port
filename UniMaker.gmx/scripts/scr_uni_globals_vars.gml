///scr_uni_globals_vars()
global.game_directory = program_directory+"\";
global.sub_directory = string_copy(program_directory,1,string_length(program_directory)-10)+"\";
global.user_directory = game_save_id+"\Temp";
global.deaths = 0;

// URLS
ini_open(global.game_directory+"url.cfg");
global.url_manual = ini_read_string("URL","manual","");
global.url_webpage = ini_read_string("URL","webpage","");
global.url_dlcourses = ini_read_string("URL","dlcourses","");
global.url_discordrpc = ini_read_string("URL","rpc","");
ini_close();

global.build = "[1.S.3]";
global.theme_spritesheet = spr_styles;
global.theme_customanim = 0;
    
global.filter = 0;
global.vbm = 0;
global.frameskip = 0;
global.gamepad = 0;
global.screenprotector = 0;
global.startedgame = 0;
global.resource_block = 0;

//Info (1.S)
global.uni_level_name = "";
global.uni_level_author = "";
global.uni_level_icon = 0;
global.uni_level_password = "";
global.uni_level_passwordon = 0;
global.uni_mario_trail = 0;

//Layout e Editor
global.unimaker = true;
global.uni_mode = 0; //0 = Editor, 1 = Play Level
global.uni_loadlevel = ""; //Nível a ser carregado no modo "Play"
global.uni_layout = true; //Visibilidade do layout
global.grid_form = 1;
global.uni_layout_fade = 1; //Opacidade do Layout
global.uni_layout_select = 0; //Seleção de opção (submenu) do Layout superior
global.uni_editor_activity = true; //Atividade do editor
global.uni_play = false; // false = Testando Nível, true = Editando Nível. 
global.uni_play_lock = false;//Travar o modo "Play" para evitar bugs
global.uni_select_resource = obj_uni_resource_empty; //Recurso de edição selecionado
global.uni_mario_onoff = true; //Visibilidade do Mario no editor
global.uni_instance_deactivate = true; //Desativa objetos fora da tela
global.uni_cursor_draw = true; //Desenho do cursor
//Level
global.shadow = 0;
global.uni_level_style = 0; //Estilo do nível
global.uni_level_size = 4; //Tamanho do nível
global.uni_level_time = 300; //Tempo do nível
global.uni_level_music = 0; //Música do nível
global.uni_level_lock = false; //Bloqueio do editor
global.uni_level_autoscroll = 0;//0 = Parado, 1 = Lento, 2 = Médio, 3 = Rápido, 4 = Classic
//Efeitos
global.uni_level_effect = 0;
global.uni_level_effect1 = false; //Chuva
global.uni_level_effect2 = false; //Neblina
global.uni_level_effect3 = false; //Nevasca
global.uni_level_effect4 = false; //Labaredas
global.uni_level_effect5 = false; //Grama
global.uni_level_effect6 = false; //Peixes
global.uni_level_effect7 = false; //Escuridão
//Outros
global.uni_music_offon = true; //Volume da música
global.uni_sfxisplaying = false; //Checar de SFXs estão sendo tocados
global.uni_cursor = 0; //0 = Normal, 1 = Grab, 2 = Eraser
global.uni_paintmusic = false; //Easter Egg da música do editor
global.uni_resource_create = false; //Permite criar recursos ou usar o drang'n'drop
//Game
global.uni_lives = 5;
global.uni_score = 0;
global.uni_coins = 0;


//===================MUSIC===================
global.uni_musicpack = ds_map_create();

//PLAY - EDIT MODE
var m1;
for(m1=0; m1<23; m1+=1){
     
    //[0 - 23]
    global.uni_musicpack[m1] = audio_create_stream(global.game_directory+"play_"+string(m1+1)+".ogg");
    //[24 - 47]
    global.uni_musicpack[m1+23] = audio_create_stream(global.game_directory+"edit_"+string(m1+1)+".ogg");
};

//EDITOR
global.uni_musicpack[48] = audio_create_stream(global.game_directory+"edit_a1.ogg");
global.uni_musicpack[49] = audio_create_stream(global.game_directory+"edit_a2.ogg");
global.uni_musicpack[50] = audio_create_stream(global.game_directory+"edit_a3.ogg");

//INTERFACE
global.uni_musicpack[51] = audio_create_stream(global.game_directory+"ui_int.ogg");
global.uni_musicpack[52] = audio_create_stream(global.game_directory+"ui_ts.ogg");
global.uni_musicpack[53] = audio_create_stream(global.game_directory+"ui_cm.ogg");

//ITEM
global.uni_musicpack[54] = audio_create_stream(global.game_directory+"item_ss.ogg");
global.uni_musicpack[55] = audio_create_stream(global.game_directory+"item_ps.ogg");

//FALL DRAMA
global.uni_musicpack[56] = audio_create_stream(global.game_directory+"fall_1.ogg");
global.uni_musicpack[57] = audio_create_stream(global.game_directory+"fall_2.ogg");
global.uni_musicpack[58] = audio_create_stream(global.game_directory+"fall_3.ogg");
global.uni_musicpack[59] = audio_create_stream(global.game_directory+"fall_4.ogg");

//COSTUME
global.uni_musicpack[60] = audio_create_stream(global.game_directory+"cc_mdn.ogg");
global.uni_musicpack[61] = audio_create_stream(global.game_directory+"cc_smb1.ogg");
global.uni_musicpack[62] = audio_create_stream(global.game_directory+"cc_smb3.ogg");
global.uni_musicpack[63] = audio_create_stream(global.game_directory+"cc_smw.ogg");
global.uni_musicpack[64] = audio_create_stream(global.game_directory+"bc_mdn.ogg");
global.uni_musicpack[65] = audio_create_stream(global.game_directory+"bc_smb1.ogg");
global.uni_musicpack[66] = audio_create_stream(global.game_directory+"bc_smb3.ogg");
global.uni_musicpack[67] = audio_create_stream(global.game_directory+"bc_smw.ogg");
global.uni_musicpack[68] = audio_create_stream(global.game_directory+"tb_mdn1.ogg");
global.uni_musicpack[69] = audio_create_stream(global.game_directory+"tb_mdn2.ogg");
global.uni_musicpack[70] = audio_create_stream(global.game_directory+"tb_smb1.ogg");
global.uni_musicpack[71] = audio_create_stream(global.game_directory+"tb_smb3.ogg");
global.uni_musicpack[72] = audio_create_stream(global.game_directory+"tb_smw.ogg");
