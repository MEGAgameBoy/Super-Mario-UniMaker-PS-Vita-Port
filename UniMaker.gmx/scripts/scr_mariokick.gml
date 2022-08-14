///scr_mariokick()

/*
**  Usage:
**      scr_mariokick()
**
**  Returns:
**      The sprite_index of Mario's kicking sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_kick
    case cs_big: return spr_mario_big_kick
    case cs_fire: return spr_mario_fire_kick
    case cs_hammer: return spr_mario_hammer_kick
    case cs_leaf: return spr_mario_leaf_kick
    case cs_ice: return spr_mario_ice_kick
    case cs_super: return spr_mario_super_kick
    case cs_bee: return spr_mario_bee_kick
    case cs_shell: return spr_mario_shell_kick
    case cs_propeller: return spr_mario_propeller_kick
    case cs_boomerang: return spr_mario_boomerang_kick
}
