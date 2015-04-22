///////////////////////////////////////Standard Jump/////////////////////////////////////////////////////
//A standard jump, as differentiated from other jumps, is a character's basic ability to jump without  //
//the aid of technology. Standard jumps drain a character's var_hud_stamina and have no affect on heat or      //
//battery.                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

if var_bool_grounded = 1                 //
    {
        if place_meeting(x,y+1,par_platform) and keyboard_check(vk_down) //Fall through platforms if holding down while jumping on one
        {
            y+=1
            var_bool_grounded = 0
        }
        else
        {
            alarm[0]=2
            audio_play_sound(choose(snd_grunt1,snd_grunt2,snd_grunt3,snd_grunt4,snd_grunt5),10,false)
            var_vsp -= var_stat_standardJumpF
            var_anim_jetJump = 1
            var_anim_standardJump = 1
            var_bool_grounded = 0
            var_hud_stamina -= 3
            var_regenStaminaCheck = 60
        }
    }