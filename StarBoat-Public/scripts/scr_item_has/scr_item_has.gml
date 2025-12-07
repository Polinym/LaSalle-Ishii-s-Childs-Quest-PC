function scr_item_has(arg_item)
{
	with (obj_ram)
	{
		var tmp_items = items;
		var tmp_item;
		for (var i = 0; i < item_count; i++)
		{
			tmp_item = tmp_items[i];
			if (tmp_item == 0) {return false;}
			else if (tmp_item == arg_item)
			{
				return true;
			}
		}
		return false;
	}
}