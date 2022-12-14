///scr_marioride()

/*
**  Usage:
**      scr_marioride()
**
**  Returns:
**      The sprite_index of Mario's Yoshi riding sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_small: return spr_mario_small_ride
    case cs_big: return spr_mario_big_ride
    case cs_fire: return spr_mario_fire_ride
    case cs_hammer: return spr_mario_hammer_ride
    case cs_leaf: return spr_mario_leaf_ride
    case cs_ice: return spr_mario_ice_ride
    case cs_super: return spr_mario_super_ride
    case cs_bee: return spr_mario_bee_ride
    case cs_shell: return spr_mario_shell_ride
    case cs_propeller: return spr_mario_propeller_ride
    case cs_boomerang: return spr_mario_boomerang_ride
}
