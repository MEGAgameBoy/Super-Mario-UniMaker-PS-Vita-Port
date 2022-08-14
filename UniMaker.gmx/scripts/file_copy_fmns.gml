// real file_copy_fmns(string fname, string newname)

if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define(global.game_directory+"_fmng.dll", "file_copy", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free(global.game_directory+"_fmng.dll");
    return FileManager_result;
}
