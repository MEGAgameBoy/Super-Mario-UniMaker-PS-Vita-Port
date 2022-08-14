// real file_rename_fmns(string oldname, string newname)

if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define("FileManager.dll", "file_rename", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.dll");
    return FileManager_result;
}

if (os_type == os_macosx)
{
    var FileManager_result = external_call(external_define("FileManager.dylib", "file_rename", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.dylib");
    return FileManager_result;
}
       
if (os_type == os_linux)
{
    var FileManager_result = external_call(external_define("FileManager.so", "file_rename", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.so");
    return FileManager_result;
}
