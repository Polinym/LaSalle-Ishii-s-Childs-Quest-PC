function scr_item_add(arg_item)
{
	with (obj_ram)
	{
		items[item_count] = arg_item;
		item_count++;
	}
}