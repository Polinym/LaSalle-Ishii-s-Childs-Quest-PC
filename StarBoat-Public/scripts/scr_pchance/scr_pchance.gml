/// @description scr_pchance(numerator, denominator)
/// @param numerator
/// @param  denominator
function scr_pchance(argument0, argument1) 
{
	return random(1) < argument0/argument1;
}
