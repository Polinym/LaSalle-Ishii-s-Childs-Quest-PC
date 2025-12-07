function scr_item_force(arg_item)
{
	with (obj_ram)
	{
		if (item_count < 6)
		{
			items[item_count] = arg_item;
			item_count++;
		}
		else
		{
			get_item = arg_item;
			scr_msg(line_key_item);
		}
	}
}