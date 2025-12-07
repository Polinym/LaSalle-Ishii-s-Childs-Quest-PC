/// @description scr_dir_step(movespeed)
/// @param movespeed
function scr_dir_step(argument0) 
{
	switch (dir)
	{
	    case "up": y += -argument0; break;
	    case "down": y += argument0; break;
	    case "right": x += argument0; break;
	    case "left": x += -argument0; break;
	}
}
