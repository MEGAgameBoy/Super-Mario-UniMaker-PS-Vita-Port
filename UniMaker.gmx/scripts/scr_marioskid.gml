///scr_marioskid()

/*
**  Usage:
**      scr_marioskid()
**
**  Returns:
**      The sprite_index of Mario's skiding sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_skid
    case cs_big: return spr_mario_big_skid
    case cs_fire: return spr_mario_fire_skid
    case cs_hammer: return spr_mario_hammer_skid
    case cs_leaf: return spr_mario_leaf_skid
    case cs_ice: return spr_mario_ice_skid
    case cs_super: return spr_mario_super_skid
    case cs_bee: return spr_mario_bee_skid
    case cs_shell: return spr_mario_shell_skid
    case cs_propeller: return spr_mario_propeller_skid
    case cs_boomerang: return spr_mario_boomerang_skid
}
