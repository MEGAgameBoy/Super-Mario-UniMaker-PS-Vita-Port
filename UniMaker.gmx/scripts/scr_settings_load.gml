//Carregar Dados
ini_open(working_directory+"settings.ini")
//Seção das preferencias 'Preferences'
global.windowsize = real(base64_decode(ini_read_string("Preferences","WindowSize",0)));
global.gamepad = real(base64_decode(ini_read_string("Preferences","Gamepad",0)));
global.filter = real(base64_decode(ini_read_string("Preferences","Filter",0)));
global.vsync = real(base64_decode(ini_read_string("Preferences","VSYNC",false)));
global.volume_effects = real(base64_decode(ini_read_string("Preferences","EffectsVolume",1)));
global.volume_voices = real(base64_decode(ini_read_string("Preferences","VoicesVolume",1)));
global.volume_muisc = real(base64_decode(ini_read_string("Preferences","MusicVolume",1)));
global.language = real(base64_decode(ini_read_string("Preferences","Language",0)));
global.uni_layout_color = real(base64_decode(ini_read_string("Preferences","LayoutColor",1)));
global.uni_mario_trail = real(base64_decode(ini_read_string("Preferences","Trails",0)));
global.uni_stat_globalscore =  real(base64_decode(ini_read_string("Preferences","0",0)));
global.uni_stat_levelsplayed = real(base64_decode(ini_read_string("Preferences","1",0)));
//Seção dos controles 'Controls'
global.key_shift = ini_read_real("Controls","Shift",ord("X"));
global.key_control = ini_read_real("Controls","Control",0);
global.key_backspace = ini_read_real("Controls","Backspace",0);
global.key_space = ini_read_real("Controls","Space",0);
global.key_enter = ini_read_real("Controls","Enter",0);
global.key_up = ini_read_real("Controls","Up",0);
global.key_left = ini_read_real("Controls","Left",0);
global.key_down = ini_read_real("Controls","Down",0);
global.key_right = ini_read_real("Controls","Right",0);
ini_close();
