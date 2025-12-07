function scr_npc_bonus(arg_line, arg_dir)
{
	if (not bonus) {instance_destroy();}
	else
	{
		line = arg_line;
		dir = arg_dir;
		image_index = (dir*2);
	}
}