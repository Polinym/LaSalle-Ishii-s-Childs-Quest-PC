function scr_load_flags2(arg_lst, arg_index, arg_len, arg_offset)
{
	var tmp_val = scr_buffer_read();
	var tmp_flag = 0x1;
	for (var i = arg_index; i < (arg_index+arg_len); i++)
	{
		if (tmp_val & tmp_flag)
		{
			arg_lst[i][arg_offset] = true;
		}
		else
		{
			arg_lst[i][arg_offset] = false;	
		}
		tmp_flag = tmp_flag << 1;
	}
	return tmp_val;
}