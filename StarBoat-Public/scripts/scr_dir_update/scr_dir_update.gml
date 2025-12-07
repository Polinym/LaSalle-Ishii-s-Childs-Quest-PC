/// @description scr_dir_update()
function scr_dir_update() 
{
	switch (dir)
	{
	    case "down": image_index = 0; break;
	    case "up": image_index = 4; break;
	    case "right": image_index = 2; break;
	    case "left": image_index = 6; break;
	}
}
