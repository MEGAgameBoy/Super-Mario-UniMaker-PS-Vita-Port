///scr_marioswim2()

/*
**  Usage:
**      scr_marioswim2()
**
**  Returns:
**      The sprite_index of Mario's upwards swimming sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_frog: return 0
    case cs_penguin: return 0
}
