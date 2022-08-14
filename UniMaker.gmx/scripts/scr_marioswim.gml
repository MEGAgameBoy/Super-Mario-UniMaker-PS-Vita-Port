///scr_marioswim()

/*
**  Usage:
**      scr_marioswim()
**
**  Returns:
**      The sprite_index of Mario's swimming sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_swim
    case cs_big: return spr_mario_big_swim
    case cs_fire: return spr_mario_fire_swim
    case cs_hammer: return spr_mario_hammer_swim
    case cs_leaf: return spr_mario_leaf_swim
    case cs_ice: return spr_mario_ice_swim
    case cs_super: return spr_mario_super_swim
    case cs_bee: return spr_mario_bee_swim
    case cs_shell: return spr_mario_shell_swim
    case cs_propeller: return spr_mario_propeller_swim
    case cs_boomerang: return spr_mario_boomerang_swim
}
