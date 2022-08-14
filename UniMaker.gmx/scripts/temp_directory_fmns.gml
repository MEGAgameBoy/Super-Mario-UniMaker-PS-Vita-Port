// string temp_directory_fmns()
    
if (os_type == os_windows)
{
    var FileManager_result = external_call(external_define(working_directory+"Data\_fmng.dll", "temp_directory", dll_cdecl, ty_string, 0));
    external_free(working_directory+"Data\_fmng.dll");
    return FileManager_result;
}
