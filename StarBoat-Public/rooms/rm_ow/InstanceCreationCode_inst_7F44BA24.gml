var tmp_line = 116;
if (scr_item_has(item_RosettaStone))
{
	tmp_line = 117;
	take = item_RosettaStone;
}
scr_cuts_set(BCK_HOUSE, tmp_line, spr_port_student, false);