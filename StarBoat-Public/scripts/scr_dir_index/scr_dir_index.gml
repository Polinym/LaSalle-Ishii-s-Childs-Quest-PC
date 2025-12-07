function scr_dir_index(arg_dir)
{
	switch (arg_dir)
	{
		case "down":	return 0; break;
		case "right":	return 1; break;
		case "up":		return 2; break;
		case "left":	return 3; break;
	}
	return 0;
}