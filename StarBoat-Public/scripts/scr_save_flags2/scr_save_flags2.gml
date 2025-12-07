function scr_save_flags2(arg_lst, arg_len)
{
	var tmp_val = 0;
	var tmp_flag = 0x1;
	var i;
	for (i = 0; i < arg_len; i++)
	{
		if (arg_lst[i])
		{
			tmp_val = (tmp_val | tmp_flag);
		}
		tmp_flag = tmp_flag << 1;
	}
	return tmp_val;
}