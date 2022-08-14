// real directory_exists_fmns(string dname)

if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define(global.game_directory+"_fmng.dll", "directory_exists", dll_cdecl, ty_real, 1, ty_string), argument0);
    external_free(global.game_directory+"_fmng.dll");
    return FileManager_result;
}

