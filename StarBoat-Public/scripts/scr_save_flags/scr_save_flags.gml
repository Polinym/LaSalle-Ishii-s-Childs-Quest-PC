function scr_save_flags(arg_lst, arg_pos)
{
	var tmp_val = 0;
	var tmp_flag = 0x1;
	for (var i = arg_pos; i < (arg_pos+8); i++)
	{
		if (arg_lst[i])
		{
			tmp_val = (tmp_val | tmp_flag);
		}
		tmp_flag = tmp_flag << 1;
	}
	return tmp_val;
}