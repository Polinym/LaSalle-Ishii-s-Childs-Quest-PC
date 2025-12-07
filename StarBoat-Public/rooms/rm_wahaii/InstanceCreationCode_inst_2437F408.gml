var tmp_line = 127;
if (obj_ram.bonus) and (scr_item_has(item_RosettaStone))
{
	tmp_line = 173;
}
scr_cuts_set(BCK_HOUSE, tmp_line, spr_port_frog, false);