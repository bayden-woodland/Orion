///////////////////////////////////////Facing/////////////////////////////////////////////////////////////
//Based on the player's keyboard input, this script determines whether the character should be marked as//
//facing right or left. The character's facing is represented by a variable called "facing" so that 1 is//
//right, -1 is left, and 0 is something in between.                                                     //
//////////////////////////////////////////////////////////////////////////////////////////////////////////

if keyboard_check_pressed(vk_right)
{
    if !keyboard_check(vk_left)
    var_facing = 1
}
if keyboard_check_pressed(vk_left)
{
    if !keyboard_check(vk_right)
    var_facing = -1
}
if keyboard_check_released(vk_right)
{
    if keyboard_check(vk_left)
    var_facing = -1
}
if keyboard_check_released(vk_left)
{
    if keyboard_check(vk_right)
    var_facing = 1
}