///scr_marioshoot()

/*
**  Usage:
**      scr_marioshoot()
**
**  Returns:
**      The sprite_index of Mario's shooting sprite based on the current powerup.
*/
switch global.powerup
{
    case cs_fire: return spr_mario_fire_shoot
    case cs_hammer: return spr_mario_hammer_shoot
    case cs_ice: return spr_mario_ice_shoot
    case cs_super: return spr_mario_super_shoot
    case cs_boomerang: return spr_mario_boomerang_shoot
}
