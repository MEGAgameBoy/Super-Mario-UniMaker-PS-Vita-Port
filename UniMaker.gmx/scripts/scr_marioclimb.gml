///scr_marioclimb()

/*
**  Usage:
**      scr_marioclimb()
**
**  Returns:
**      The sprite_index of Mario's climbing sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_climb
    case cs_big: return spr_mario_big_climb
    case cs_fire: return spr_mario_fire_climb
    case cs_hammer: return spr_mario_hammer_climb
    case cs_leaf: return spr_mario_leaf_climb
    case cs_ice: return spr_mario_ice_climb
    case cs_super: return spr_mario_super_climb
    case cs_bee: return spr_mario_bee_climb
    case cs_shell: return spr_mario_shell_climb
    case cs_propeller: return spr_mario_propeller_climb
    case cs_boomerang: return spr_mario_boomerang_climb
}
