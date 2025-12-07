function scr_cuts_tiffany()
{
	scr_cuts_take(BCK_HOUSE2, [67, 68, 70], spr_port_tiffany_sad, item_Jewels);
	if (scr_flag(item_Jewels) or scr_item_has(item_Jewels))
	{
		port = spr_port_tiffany;
	}
}