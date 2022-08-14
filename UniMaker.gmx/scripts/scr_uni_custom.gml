///scr_uni_custom(file,reset)
var nothing = argument0;
var _dir = global.user_directory;//filename_dir(argument0);
var theme = 0;
var effect = 0;
//======================= CARREGAR =======================
if(argument1 == 0){

//Scenery
ini_open(_dir+"\uni_scenery.txt")
global.custom_scenery_underwater = ini_read_real("UNI_SCENERY","underwater",0);
global.custom_scenery_color_grid = ini_read_real("UNI_SCENERY","color_grid",1);
global.custom_scenery_color_shadow = ini_read_real("UNI_SCENERY","color_shadow",0);
global.custom_scenery_sprsheet_frames = ini_read_real("UNI_SCENERY","sprsheet_frames",1);
global.custom_scenery_sprsheet_anim = ini_read_real("UNI_SCENERY","sprsheet_anim",0);
global.custom_scenery_bg_frames = ini_read_real("UNI_SCENERY","bg_frames",1);
global.custom_scenery_bg_anim = ini_read_real("UNI_SCENERY","bg_anim",0);
global.custom_scenery_bg_color_r = ini_read_real("UNI_SCENERY","bg_color_r",0);
global.custom_scenery_bg_color_g = ini_read_real("UNI_SCENERY","bg_color_g",0);
global.custom_scenery_bg_color_b = ini_read_real("UNI_SCENERY","bg_color_b",0);
global.custom_scenery_bg_camfixed = ini_read_real("UNI_SCENERY","bg_camfixed",0);
global.custom_scenery_bg_parallax_h = ini_read_real("UNI_SCENERY","bg_parallax_h",1);
global.custom_scenery_bg_parallax_v = ini_read_real("UNI_SCENERY","bg_parallax_v",0);
global.custom_scenery_bg_range_h = ini_read_real("UNI_SCENERY","bg_range_h",0);
global.custom_scenery_bg_range_v = ini_read_real("UNI_SCENERY","bg_range_v",0);
global.custom_scenery_bg_tiled_h = ini_read_real("UNI_SCENERY","bg_tiled_h",1);
global.custom_scenery_bg_tiled_v = ini_read_real("UNI_SCENERY","bg_tiled_v",0);
global.custom_scenery_bg_offset_h = ini_read_real("UNI_SCENERY","bg_offset_h",0);
global.custom_scenery_bg_offset_v= ini_read_real("UNI_SCENERY","bg_offset_v",0);
global.custom_scenery_bg_scroll_h = ini_read_real("UNI_SCENERY","bg_scroll_h",0);
global.custom_scenery_bg_scroll_v = ini_read_real("UNI_SCENERY","bg_scroll_v",0);
global.emitter_type = ini_read_real("UNI_SCENERY","emitter_type",0);
global.emitter_intensity = ini_read_real("UNI_SCENERY","emitter_intensity",0);
ini_close();

if(sprite_exists(global.custom_scenery_sprsheet)) sprite_delete(global.custom_scenery_sprsheet);
if(sprite_exists(global.custom_scenery_bg_sprite)) sprite_delete(global.custom_scenery_bg_sprite);
if(file_exists(_dir+"\uni_scenery.png")) global.custom_scenery_sprsheet = sprite_add(_dir+"\uni_scenery.png",0,0,0,0,0);
else global.custom_scenery_sprsheet = sprite_duplicate(spr_custom);    
if(file_exists(_dir+"\uni_scenery_bg.png")) global.custom_scenery_bg_sprite = sprite_add(_dir+"\uni_scenery_bg.png",global.custom_scenery_bg_frames,0,0,0,0);
else global.custom_scenery_bg_sprite = sprite_duplicate(spr_background);

//Effect
var gfx = 0;
repeat(5){

    ini_open(_dir+"\uni_effect_"+string(gfx+1)+".txt")
    global.custom_effect_opacity[gfx] = ini_read_real("UNI_EFFECT","opacity",1);
    global.custom_effect_depth[gfx] = ini_read_real("UNI_EFFECT","depth",0);
    global.custom_effect_bmode[gfx] = ini_read_real("UNI_EFFECT","bmode",0);
    global.custom_effect_frames[gfx] = ini_read_real("UNI_EFFECT","frames",0);
    global.custom_effect_anim[gfx] = ini_read_real("UNI_EFFECT","anim",1);
    global.custom_effect_camfixed[gfx] = ini_read_real("UNI_EFFECT","camfixed",0);
    global.custom_effect_parallax_h[gfx] = ini_read_real("UNI_EFFECT","parallax_h",0);
    global.custom_effect_parallax_v[gfx] = ini_read_real("UNI_EFFECT","parallax_v",0);
    global.custom_effect_range_h[gfx] = ini_read_real("UNI_EFFECT","range_h",0);
    global.custom_effect_range_v[gfx] = ini_read_real("UNI_EFFECT","range_v",0);
    global.custom_effect_tiled_h[gfx] = ini_read_real("UNI_EFFECT","tiled_h",1);
    global.custom_effect_tiled_v[gfx] = ini_read_real("UNI_EFFECT","tiled_v",1);
    global.custom_effect_offset_h[gfx] = ini_read_real("UNI_EFFECT","offset_h",0);
    global.custom_effect_offset_v[gfx] = ini_read_real("UNI_EFFECT","offset_v",0);
    global.custom_effect_scroll_h[gfx] = ini_read_real("UNI_EFFECT","scroll_h",0);
    global.custom_effect_scroll_v[gfx] = ini_read_real("UNI_EFFECT","scroll_v",0);
    ini_close();

    if(sprite_exists(global.custom_effect_sprite[gfx])) sprite_delete(global.custom_effect_sprite[gfx]);
    if(file_exists(_dir+"\uni_effect_"+string(gfx+1)+".png"))
        global.custom_effect_sprite[gfx] = sprite_add(_dir+"\uni_effect_"+string(gfx+1)+".png",global.custom_effect_frames[gfx],0,0,0,0);
    else
        global.custom_effect_sprite[gfx] = sprite_duplicate(spr_effect);
    gfx++;
};


//Music
if(file_exists(global.custom_music_play)) audio_destroy_stream(global.custom_music_play);
if(file_exists(global.custom_music_edit)) audio_destroy_stream(global.custom_music_edit);
if(file_exists(global.custom_music_ambience)) audio_destroy_stream(global.custom_music_ambience);

//Play
if(file_exists(_dir+"\uni_music_play.ogg"))
    global.custom_music_play = audio_create_stream(_dir+"\uni_music_play.ogg");
else
    global.custom_music_play = audio_create_stream(global.game_directory+"_ctp.ogg");

//Edit
if(file_exists(_dir+"\uni_music_edit.ogg"))
    global.custom_music_edit = audio_create_stream(_dir+"\uni_music_edit.ogg");
else
    global.custom_music_edit = audio_create_stream(global.game_directory+"_cte.ogg");

//Ambiente
if(file_exists(_dir+"\uni_effect_ambience.ogg"))
    global.custom_music_ambience = audio_create_stream(_dir+"\uni_effect_ambience.ogg");
else
    global.custom_music_ambience = audio_create_stream(global.game_directory+"_cta.ogg");
};  
//======================= RESETAR =======================
else{

//Scenery
global.custom_scenery_underwater = 0;
global.custom_scenery_color_grid = 0;
global.custom_scenery_color_shadow = 0;
global.custom_scenery_sprsheet_frames = 1;
global.custom_scenery_sprsheet_anim = 0;
global.custom_scenery_bg_frames = 1;
global.custom_scenery_bg_anim = 0;
global.custom_scenery_bg_color_r = 0;
global.custom_scenery_bg_color_g = 0;
global.custom_scenery_bg_color_b = 0;
global.custom_scenery_bg_camfixed = 0;
global.custom_scenery_bg_parallax_h = 1;
global.custom_scenery_bg_parallax_v = 0;
global.custom_scenery_bg_range_h = 0;
global.custom_scenery_bg_range_v = 0;
global.custom_scenery_bg_tiled_h = 1;
global.custom_scenery_bg_tiled_v = 0;
global.custom_scenery_bg_offset_h = 0;
global.custom_scenery_bg_offset_v= 0;
global.custom_scenery_bg_scroll_h = 0;
global.custom_scenery_bg_scroll_v = 0;

if(sprite_exists(global.custom_scenery_sprsheet)) sprite_delete(global.custom_scenery_sprsheet);
if(sprite_exists(global.custom_scenery_bg_sprite)) sprite_delete(global.custom_scenery_bg_sprite);
global.custom_scenery_sprsheet = sprite_duplicate(spr_custom);    
global.custom_scenery_bg_sprite = sprite_duplicate(spr_background);

//Effect
var gfx = 0;
repeat(5){

    global.custom_effect_opacity[gfx] = 1;
    global.custom_effect_depth[gfx] = 0;
    global.custom_effect_bmode[gfx] = 0;
    global.custom_effect_frames[gfx] = 0;
    global.custom_effect_anim[gfx] = 1;
    global.custom_effect_camfixed[gfx] = 0;
    global.custom_effect_parallax_h[gfx] = 0;
    global.custom_effect_parallax_v[gfx] = 0;
    global.custom_effect_range_h[gfx] = 0;
    global.custom_effect_range_v[gfx] = 0;
    global.custom_effect_tiled_h[gfx] = 1;
    global.custom_effect_tiled_v[gfx] = 1;
    global.custom_effect_offset_h[gfx] = 0;
    global.custom_effect_offset_v[gfx] = 0;
    global.custom_effect_scroll_h[gfx] = 0;
    global.custom_effect_scroll_v[gfx] = 0;
    global.emitter_type = 0;
    global.emitter_intensity = 0;

    if(sprite_exists(global.custom_effect_sprite[gfx])) sprite_delete(global.custom_effect_sprite[gfx]);
    global.custom_effect_sprite[gfx] = sprite_duplicate(spr_effect);
    
    gfx++;
};

if(audio_exists(global.custom_music_play)) audio_destroy_stream(global.custom_music_play);
if(audio_exists(global.custom_music_edit)) audio_destroy_stream(global.custom_music_edit);
if(audio_exists(global.custom_music_ambience)) audio_destroy_stream(global.custom_music_ambience);
global.custom_music_play = audio_create_stream(global.game_directory+"_ctp.ogg");
global.custom_music_edit = audio_create_stream(global.game_directory+"_cte.ogg");
global.custom_music_ambience = audio_create_stream(global.game_directory+"_cta.ogg");
};
