///scr_mariogoal()

/*
**  Usage:
**      scr_mariogoal()
**
**  Returns:
**      The sprite_index of Mario's goal sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_goal
    case cs_big: return spr_mario_big_goal
    case cs_fire: return spr_mario_fire_goal
    case cs_hammer: return spr_mario_hammer_goal
    case cs_leaf: return spr_mario_leaf_goal
    case cs_ice: return spr_mario_ice_goal
    case cs_super: return spr_mario_super_goal
    case cs_bee: return spr_mario_bee_goal
    case cs_shell: return spr_mario_shell_goal
    case cs_propeller: return spr_mario_propeller_goal
    case cs_boomerang: return spr_mario_boomerang_goal
}
