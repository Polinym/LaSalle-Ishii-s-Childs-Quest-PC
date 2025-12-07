event_inherited();
title = "COMMAND";
title_offset = 24;
txt = " TALK ITEM## MNG  LOOK";
txt_hmp = "";
scr_hud_ini(10, 3);
char = obj_ram.party[0];
update = true;
pos_x = 16; pos_y = 8;
pos = 0;
pos_pos[3] = [40, 16];
pos_pos[2] = [0, 16];
pos_pos[1] = [40, 0];
pos_pos[0] = [0, 0];
reading = false;
held = false;
if (jpn)
{
	txt = " Talk  Items## MNG   Search";
	title_offset += 8;
	scr_hud_ini(13, 3);
	pos_pos[1][0] += 8;
	pos_pos[3][0] += 8;
}