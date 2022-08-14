//Salvar Dados
ini_open(working_directory+"settings.ini")
//Seção das preferencias 'Preferences'
ini_write_string("Preferences","WindowSize",base64_encode(global.windowsize));
ini_write_string("Preferences","Gamepad",base64_encode(global.gamepad));
ini_write_string("Preferences","Filter",base64_encode(global.filter));
ini_write_string("Preferences","VSYNC",base64_encode(global.vsync));
ini_write_string("Preferences","Language",base64_encode(global.language));
ini_write_string("Preferences","LayoutColor",base64_encode(global.uni_layout_color));
ini_write_string("Preferences","Trails",base64_encode(global.uni_mario_trail));
ini_write_string("Preferences","0",base64_encode(global.uni_stat_globalscore));
ini_write_string("Preferences","1",base64_encode(global.uni_stat_levelsplayed));
//Seção dos controles 'Controls'
ini_write_real("Controls","Shift",global.key_shift);
ini_write_real("Controls","Control",global.key_control);
ini_write_real("Controls","Backspace",global.key_backspace);
ini_write_real("Controls","Space",global.key_space);
ini_write_real("Controls","Enter",global.key_enter);
ini_write_real("Controls","Up",global.key_up);
ini_write_real("Controls","Left",global.key_left);
ini_write_real("Controls","Down",global.key_down);
ini_write_real("Controls","Right",global.key_right);
ini_close();
