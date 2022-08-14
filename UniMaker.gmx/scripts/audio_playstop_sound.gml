///audio_playstop_sound(soundid,priority,loops)
//Stops and plays the sound given in argument0. Set argument1 to true to make the sound loop.
if (audio_is_playing(argument0))
    audio_stop_sound(argument0);
audio_play_sound(argument0,argument1,argument2);
