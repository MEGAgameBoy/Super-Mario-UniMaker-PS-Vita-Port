///scr_mariohold()

/*
**  Usage:
**      scr_mariohold()
**
**  Returns:
**      The sprite_index of Mario's holding sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_hold
    case cs_big: return spr_mario_big_hold
    case cs_fire: return spr_mario_fire_hold
    case cs_hammer: return spr_mario_hammer_hold
    case cs_leaf: return spr_mario_leaf_hold
    case cs_ice: return spr_mario_ice_hold
    case cs_super: return spr_mario_super_hold
    case cs_bee: return spr_mario_bee_hold
    case cs_shell: return spr_mario_shell_hold
    case cs_propeller: return spr_mario_propeller_hold
    case cs_boomerang: return spr_mario_boomerang_hold
}
