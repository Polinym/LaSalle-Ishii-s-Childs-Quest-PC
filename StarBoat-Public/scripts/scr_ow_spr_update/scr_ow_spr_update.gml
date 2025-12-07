/// @description scr_ow_spr_update(char)
/// @param char
function scr_ow_spr_update(argument0) 
{
	if (argument0 == -1) {visible = false;}
	else
	{
	visible = true;
	sprite_index = argument0.spr;
	}
}
