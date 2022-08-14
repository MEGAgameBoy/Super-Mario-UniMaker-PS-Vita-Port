var file = get_save_filename_ext("Portable Network Graphics|*.png;*.bmp;*.jpeg","",global.sub_directory,"Export Screenshot");
if (file != "")
{
 //Screenshot
 screen_save_part(file,0,0,window_get_width(),window_get_height());
}
with (obj_uni_layout_screen_temp)
 event_user(0);

