///scr_uni_loadcopy(fname)
var _dir = filename_dir(argument0);
audio_destroy_stream(global.custom_music_play);
audio_destroy_stream(global.custom_music_edit);
audio_destroy_stream(global.custom_music_ambience);

directory_destroy_fmns(global.user_directory+"\");
file_delete_fmns(global.user_directory+"\uni_scenery.png");
file_delete_fmns(global.user_directory+"\uni_scenery_bg.png");
file_delete_fmns(global.user_directory+"\uni_scenery.txt");
file_delete_fmns(global.user_directory+"\uni_effect_1.txt");
file_delete_fmns(global.user_directory+"\uni_effect_2.txt");
file_delete_fmns(global.user_directory+"\uni_effect_3.txt");
file_delete_fmns(global.user_directory+"\uni_effect_4.txt");
file_delete_fmns(global.user_directory+"\uni_effect_5.txt");
file_delete_fmns(global.user_directory+"\uni_effect_1.png");
file_delete_fmns(global.user_directory+"\uni_effect_2.png");
file_delete_fmns(global.user_directory+"\uni_effect_3.png");
file_delete_fmns(global.user_directory+"\uni_effect_4.png");
file_delete_fmns(global.user_directory+"\uni_effect_5.png");
file_delete_fmns(global.user_directory+"\uni_music_edit.ogg");
file_delete_fmns(global.user_directory+"\uni_music_play.ogg");
file_delete_fmns(global.user_directory+"\uni_effect_ambience.ogg");
file_delete_fmns(global.user_directory+"\course.ini")

directory_create_fmns(global.user_directory+"\");
file_copy_fmns(_dir+"\uni_scenery.png",global.user_directory+"\uni_scenery.png");
file_copy_fmns(_dir+"\uni_scenery_bg.png",global.user_directory+"\uni_scenery_bg.png");
file_copy_fmns(_dir+"\uni_scenery.txt",global.user_directory+"\uni_scenery.txt");
file_copy_fmns(_dir+"\uni_effect_1.txt",global.user_directory+"\uni_effect_1.txt");
file_copy_fmns(_dir+"\uni_effect_2.txt",global.user_directory+"\uni_effect_2.txt");
file_copy_fmns(_dir+"\uni_effect_3.txt",global.user_directory+"\uni_effect_3.txt");
file_copy_fmns(_dir+"\uni_effect_4.txt",global.user_directory+"\uni_effect_4.txt");
file_copy_fmns(_dir+"\uni_effect_5.txt",global.user_directory+"\uni_effect_5.txt");
file_copy_fmns(_dir+"\uni_effect_1.png",global.user_directory+"\uni_effect_1.png");
file_copy_fmns(_dir+"\uni_effect_2.png",global.user_directory+"\uni_effect_2.png");
file_copy_fmns(_dir+"\uni_effect_3.png",global.user_directory+"\uni_effect_3.png");
file_copy_fmns(_dir+"\uni_effect_4.png",global.user_directory+"\uni_effect_4.png");
file_copy_fmns(_dir+"\uni_effect_5.png",global.user_directory+"\uni_effect_5.png");
file_copy_fmns(_dir+"\uni_music_edit.ogg",global.user_directory+"\uni_music_edit.ogg");
file_copy_fmns(_dir+"\uni_music_play.ogg",global.user_directory+"\uni_music_play.ogg");
file_copy_fmns(_dir+"\uni_effect_ambience.ogg",global.user_directory+"\uni_effect_ambience.ogg");
file_copy_fmns(argument0,global.user_directory+"\course.ini")