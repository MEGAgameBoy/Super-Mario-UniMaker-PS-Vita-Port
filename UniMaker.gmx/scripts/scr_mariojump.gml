///scr_mariojump()

/*
**  Usage:
**      scr_mariojump()
**
**  Returns:
**      The sprite_index of Mario's jumping sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_jump
    case cs_big: return spr_mario_big_jump
    case cs_fire: return spr_mario_fire_jump
    case cs_hammer: return spr_mario_hammer_jump
    case cs_leaf: return spr_mario_leaf_jump
    case cs_ice: return spr_mario_ice_jump
    case cs_super: return spr_mario_super_jump
    case cs_bee: return spr_mario_bee_jump
    case cs_shell: return spr_mario_shell_jump
    case cs_propeller: return spr_mario_propeller_jump
    case cs_boomerang: return spr_mario_boomerang_jump
}
