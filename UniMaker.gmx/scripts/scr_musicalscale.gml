///scr_musicalscale(killer,enemy,playsound)

/*
**  Usage:
**      scr_musicalscale(killer,enemy,playsound)
**
**  Given:
**      killer      Object that is doing the killing
**      enemy       The enemy getting killed
**      playsound   Whether sounds will play
**
**  Purpose:
**      Creates the appropriate amount of points based on the variable hitpoint.
*/
var scoreobject = instance_create(round((argument1.bbox_left+argument1.bbox_right)/2-8),round(argument1.y),obj_score)
switch argument0.hitpoint
{

    //100 Points
    case 0:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.0)}
            with scoreobject event_user(0)
        break

    //200 Points
    case 1:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.1)}
            with scoreobject event_user(1)
        break

    //400 Points
    case 2:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.2)}
            with scoreobject event_user(2)
        break

    //800 Points
    case 3:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.3)}
            with scoreobject event_user(3)
        break

    //1000 Points
    case 4:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.4)}
            with scoreobject event_user(4)
        break

    //2000 Points
    case 5:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.5)}
            with scoreobject event_user(5)
        break

    //4000 Points
    case 6:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.6)}
            with scoreobject event_user(6)
        break

    //1up
    default:
        if argument2 {var sfx = audio_playstop_sound(snd_kick,0,0) audio_sound_pitch(sfx,1.7)}
            with scoreobject event_user(7)

}
argument0.hitpoint++
