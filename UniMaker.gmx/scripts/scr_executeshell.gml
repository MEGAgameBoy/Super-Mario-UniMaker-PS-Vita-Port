///scr_executeshell(fname,wait)
if(os_type == os_win32 || os_type == os_windows){
    external_call(external_define(global.game_directory+"_exeshell.dll","ExecuteShell",dll_cdecl,ty_real,2,ty_string,ty_real),argument0,argument1);
};
