// real directory_copy_fmns(string dname, string newname)

if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define("FileManager.dll", "directory_copy", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.dll");
    return FileManager_result;
}

if (os_type == os_macosx)
{
    var FileManager_result = external_call(external_define("FileManager.dylib", "directory_copy", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.dylib");
    return FileManager_result;
}
       
if (os_type == os_linux)
{
    var FileManager_result = external_call(external_define("FileManager.so", "directory_copy", dll_cdecl, ty_real, 2, ty_string, ty_string), argument0, argument1);
    external_free("FileManager.so");
    return FileManager_result;
}
