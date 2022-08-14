// real set_working_directory_fmns(string dname)

if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define(working_directory+"Data\_fmng.dll", "set_working_directory", dll_cdecl, ty_real, 1, ty_string), argument0);
    external_free(working_directory+"Data\_fmng.dll");
    return FileManager_result;
}
