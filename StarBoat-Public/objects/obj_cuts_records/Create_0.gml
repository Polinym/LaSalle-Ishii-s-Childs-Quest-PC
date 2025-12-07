event_inherited();
var tmp_line = 135;
if (not scr_flag(flag_GotRoyalties))
{
	if (scr_get_song() > -1)
	{
		tmp_line = 136;
	}
}
scr_cuts_set(BCK_RECORDS, tmp_line, spr_port_records, true);