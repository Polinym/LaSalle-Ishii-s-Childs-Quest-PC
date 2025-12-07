function scr_cuts_sky()
{
	if (obj_ram.paints[paint_Green])
	{
		scr_cuts_set(BCK_CASTLE, 88, spr_port_dogs, false);
	}
	else
	{
		scr_cuts_set(BCK_CASTLE, 87, spr_port_dogs, false);
	}
}