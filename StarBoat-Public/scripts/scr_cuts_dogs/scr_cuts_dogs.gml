function scr_cuts_dogs()
{
	if (obj_ram.paints[paint_Green])
	{
		scr_cuts_set(BCK_CASTLE, 89, spr_port_dogs, false);
	}
	else
	{
		scr_cuts_set(BCK_CASTLE, 86, spr_port_dogs, false);
	}
}