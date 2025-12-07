var tmp_bck = BCK_HOUSE;
var tmp_port = spr_port_boats;
if (scr_flag(item_Boats))
{
	scr_cuts_set(tmp_bck, 20, tmp_port, false);
}
else
{
	if (scr_item_has(item_MagicPaint))
	{
		scr_cuts_set(tmp_bck, 19, tmp_port, false);
		take = item_MagicPaint;
	}
	else
	{
		if (scr_flag(flag_MetBoats))
		{
			scr_cuts_set(tmp_bck, 18, tmp_port, false);
		}
		else
		{
			scr_cuts_set(tmp_bck, 17, tmp_port, false);
		}
	}
}