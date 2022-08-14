///scr_marioswim3()

/*
**  Usage:
**      scr_marioswim3()
**
**  Returns:
**      The sprite_index of Mario's downwards swimming sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_frog: return 0
    case cs_penguin: return 0
}
