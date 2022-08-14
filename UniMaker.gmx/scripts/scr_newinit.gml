#define scr_newinit
//----------- UniMaker -----------

//Layout
global.ui_unimaker_layout_activity = 1
global.ui_unimaker_layout_visibility = 1;
global.ui_unimaker_layout_opacity = 1;
global.ui_unimaker_layout_gridform = 2;
global.ui_unimaker_layout_gridcolor = c_black;
global.ui_unimaker_layout_griddepth = 0;
global.ui_unimaker_layout_gridsnap = 16;
global.ui_unimaker_layout_layer = 0;
global.ui_unimaker_layout_cursor = 0;
global.ui_unimaker_layout_playertrail = 0;
global.ui_unimaker_layout_playervisibility = 1;
global.ui_unimaker_layout_autobgo = 1;
global.ui_unimaker_layout_paintmusic = 0;

//Controladores
global.ui_unimaker_playblock = 0;
global.ui_unimaker_startsigndefined = 0;
global.ui_unimaker_courseelement = obj_ce_empty;
global.ui_unimaker_courseelement_remmeber = obj_ce_empty;
global.ui_unimaker_courseelement_create = 0;
global.ui_unimaker_courseelement_block = 0;

//Undo Dog
global.ui_unimaker_undodog_count = 0;
global.ui_unimaker_undodog_start = 0;
global.ui_unimaker_undodog_mode = 0;

global.ui_unimkaer_undodog_

global.ui_unimaker_layout_posx[0 - 4] = 0;
global.ui_unimaker_layout_posy[0 - 4] = 0;



//----------- MAIN GAME -----------

//Diretórios
global.game_dirdata_user = ""; //Arquivos para serem salvos (Screenshots e Progressos)
global.game_dirdata_app = ""; //Arquivos para serem carregados (Níveis e Customizações)
global.game_dirdata_sys = ""; //Arquivos de sistema (Músicas, Audio e DLLs)

/*Músicas
0 a 22 - Tema de Game Play
23 a 45 - Tema de Editor
46 - 10 up Challenge  
47 - 100 up Challenge (4 Courses)
48   100 up Challenge (5 Courses)
49 - 100 up Challenge (16 Courses)
50 - Custom Challenge
51 - Editor Save Course
52 - Editor Load Course
53 - Custom Editor
54 - Intro
55 - Title Screen
56 - Course World
57 - Manual
58 - Challenge Clear (Toad)
59 - Challenge Clear (Peach)
60 - Boss Music
61 - Bonus Music
62 - Superstar
63 - Game Over
64 - P-Switch
65 - Mario Paint 1
66 - Mario Paint 2
67 - Mario Artist 1
68 - Mario Artist 2
69 - Course Clear (Bot)
70 - Credits (Short)
71 - Credits (Long)
72 - Course Clear (Modern)
73 - Course Clear (16-Bit)
74 - Course Clear (SMB)
75 - Course Clear (SMB3)
76 - Course Clear (SMW)
77 - Boss Clear (Modern)
78 - Boss Clear (16-Bit)
79 - Boss Clear (SMB)
80 - Boss Clear (SMB3)
81 - Boss Clear (SMW)
82 - Miss 1 (Modern)
83 - Miss 2 (Modern)
84 - Miss 1 (16-Bit)
85 - Miss 2 (16-Bit)
86 - Miss (SMB)
87 - Miss (SMB3)
88 - Miss (SMW)
89 - Mario drama 1
90 - Mario drama 2
91 - Mario drama 3
92 - Mario drama 4
93 - Zelda*/
var _init_m;
for(_init_m = 0; _init_m < 94; _init_m += 1){

    global.game_streamedaudio[_init_m] = audio_create_stream(global.game_dirdata_sys+"st\st"+string(_init_m)+".ogg");
};

//Predefinições (Salvos externamente)
global.game_cfg_firstime = 1; //Primeira vez que o jogo foi iniciado
global.game_cfg_uicolor = c_dkgray; //Cor da interface geral
global.game_cfg_uicolorcustom = $FFFFFF; //Cor customizável da interface geral
global.game_cfg_language = 0; //Idioma do jogo (0 = English, 1 = Portuguese, 2 = Spanish)
global.game_cfg_editorfeatures = 1; //Recursos do Editor (0 = Simples, 1 = Completo)
global.game_cfg_screensize = 3; //Tamanho da janela
global.game_cfg_screensizefullremember = 3; //Tamanho anterior da janela (Para atalho 'Alt+Enter')
global.game_cfg_gamepadsupport = 0; //Suporte a Game Pad nátivavamente pelo jogo
global.game_cfg_filter = 0; //Filtros (0 = Nenhum, 1 = Interpolation, 2 = HQ2X, 3 = HQ4X, 4 = CRT)
global.game_cfg_vsync = 0; //Sincronização Vertical (0 = Desligado, 1 = Normal, 2 = Alternativo)
global.game_cfg_lastmusic = 0; //Lembrar ultima música na listra de reprodução
global.game_cfg_improvement = 0; //Melhora de desempenho do jogo em modo Game Play
global.game_cfg_vbmethod = 0; //Vertex Buffer Method (0 = Rápido, 1 = Compátivel, 2 = Mais Compátivel)
global.game_cfg_displayfps = 0; //Amostrar FPS (0 = Desativado, 1 = Dentro da janela do jogo, 2 = Fora da janela do jogo)
global.game_cfg_frameskip = 1; //Pulo de quadros (0 = 60 FPS, 1 = 30 FPS)
global.game_cfg_voices = 0; //Uso da vozes durante modo Game Play
global.game_cfg_gamepadrumble = 0; //Vibração do Game Pad
global.game_cfg_screenprotector = 1; //Protetor de tela (Filtro preto e volume geral baixo)

//Segredos
global.game_ee_smallmariocap = 0; //Small Mario com chapeu!
global.game_ee_zeldacm = 0; 
global.game_ee_zeldacmmusic = 0;
global.game_ee_subcon = 0; //Tema e Costume do Super Mario Bros. 2 (USA)

//Controladores
global.gamealreadystarted = 0; //Jogo iniciado
global.game_mode = 0; //0 = UniMaker, 1 = Nível único, 2 = Custom Challenge, 3 = 10up Challenge, 4 = 100up Challenge (UniPlayer)
global.game_play = 0; //0 = Editor, 1 = Game Play
global.game_instancesdeactivate = 1; //Desativar objetos fora da tela (UniMaker/UniPlayer)
global.game_coursealreadyloaded = 0; //Nível já carregado
global.game_coursefile = ""; //Arquivo do nível

//Dseáfio (10up, 100up, Custom)
global.game_challenge_total = 16; //Total de níveis no desáfio
global.game_challenge_current = 0; //Nível atual no desáfio
var _init_c;

//Níveis do desáfio (0 a 4, 8 ou 16)
for(_init_c = 0; _init_c < 17; _init_c += 1){

    global.uni_challenge_level[_init_c] = "";
};

//----------- MAIN UI -----------

global.ui_general_font_text
global.ui_general_font_system

//----------- COURSE -----------

//Informações (Para serem usadas na interface)
global.course_info_name = ""; //Nome do nível
global.course_info_author = ""; //Nome do autor do nível
global.course_info_icon = 0; //Icone do nível (0 = Customizável)
global.course_info_customicon = sprite_duplicate(spr_csc_courseicon); //Icone customizavel do nível

global.course_info = ds_map_create(); //Dados do nível - Nome, Autor, Icone, Senha, Tempo e Total de elementos de cada área

//Área
global.course_area_current = 0; //Área atual do nível (0 a 4)

//Áreas (0 a 4)
for(_init_a = 0; _init_a < 5; _init_a += 1){

    global.course_area_data[_init_a] = ds_map_create(); //Dados da área - Tema, Tamanho, Rolagem, Músicas, etc...
    global.course_area_elements[_init_a] = ds_map_create(); //Elementos da área
};



#define script132
/*LANGUAGE: ENG
**EDITOR FEATURES: SIMPLE
**SCREEN SIZE: 3X
**GAMEPAD: ON
**FILTER: OFF
**VSYNC: OFF
**STREAMED SOUND: 00 
**>>>>
**OK
*/

/*PERFORMANCE IMPROVEMENT: OFF
**VB METHOD: FAST
**DISPLAY FPS: OFF
**FRAMESKIP: OFF 
**VOICES: ON
**GAMEPAD RUMBLE: OFF
**SCREEN PROTECTOR: ON
**<<<<
**OK
*/
