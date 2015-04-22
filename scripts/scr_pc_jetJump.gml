if var_bool_grounded = 1
{
    if place_meeting(x,y+1,par_platform) and keyboard_check(vk_down) //Fall through platforms if holding down while jumping on one
    {
        y+=1
        var_bool_grounded = 0
    }
    else
    {
//        audio_play_sound(choose(snd_pressure1,snd_pressure2,snd_pressure3,snd_pressure4),10,false) //Otherwise, jump
        audio_play_sound(choose(snd_repulsor1,snd_repulsor2,snd_repulsor3,snd_repulsor4),10,false)
        var_anim_jetJump = 1
        var_anim_repulsorJump = 1
        var_anim_standardJump = 0
        alarm[0]=8
        var_vsp -= var_equip_jetJumpF
        var_hud_heat += var_equip_bootHeat1
        var_hud_battery -= var_equip_bootDrain
    }
}
else if var_jumpNumber < var_equip_maxJumps and var_hud_heat < (101 - var_equip_bootHeat2)
{
    audio_play_sound(choose(snd_jet1,snd_jet2,snd_jet3,snd_jet4),10,false) //Doublejump
    var_anim_jetJump = 1
    var_anim_repulsorJump = 0
    var_anim_standardJump = 0
    alarm[0]=8
    var_vsp -= var_equip_jetDJumpF
    var_jumpNumber += 1
    var_hud_heat += var_equip_bootHeat2
    var_hud_battery -= var_equip_bootDrain
}