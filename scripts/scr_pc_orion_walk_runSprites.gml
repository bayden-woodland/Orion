///Orion Non-Slope Sprites

if var_facing = 1
{
    if abs(var_hsp) <= var_stat_maxWalkSpd
        sprite_index = var_spr_walkRight
    if abs(var_hsp) > var_stat_maxWalkSpd
        sprite_index = var_spr_runRight
}    
if var_facing = -1
{
    if abs(var_hsp) <= var_stat_maxWalkSpd
        sprite_index = var_spr_walkLeft
    if abs(var_hsp) > var_stat_maxWalkSpd
        sprite_index = var_spr_runLeft
}