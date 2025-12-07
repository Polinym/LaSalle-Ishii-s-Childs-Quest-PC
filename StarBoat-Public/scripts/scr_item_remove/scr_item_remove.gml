function scr_item_remove(arg_slot)
{
	with (obj_ram)
	{
		var next_item = -1;
		for (var i = arg_slot; i < (item_count+1); i++)
		{
			next_item = items[i+1];
			items[i] = next_item;
			if (next_item == 0)
			{
				//obj_ui_list.page = ( (i-1) div 3 );
				break;
			}
		}
		item_count += -1;
	}
}