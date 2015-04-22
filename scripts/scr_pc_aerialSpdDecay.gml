///////////////////////////////////////Aerial Speed Decay/////////////////////////////////////////////////
//This script is used to subtract from a character's horizontal speed when they have been launched      //
//at a horizontal speed that is greater than their intended maximum aerial speed. Particularly, when a  //
//character is moving at an extra high speed due to the compound speed of a moving platform and regular //
//grounded movement, and then leaps off of the platform. It simulates atmospheric friction to a degree  //
//but also simply makes the gameplay around moving platforms a little more balanced.                    //
//////////////////////////////////////////////////////////////////////////////////////////////////////////

var var_fric                                                        //Creates a local variable of friction to help slow the character when they are accelerated by a moving platform
var_fric = 0.025                                                    
if abs(var_hspCarry) > var_fric then var_hspCarry=var_hspCarry*(1-var_fric)      //This formula is what actually slows the character down
else var_hspCarry = 0                                              //In the event that a character's additional horizontal speed (that is var_hspCarry) is negligible (less than var_fric), it becomes 0