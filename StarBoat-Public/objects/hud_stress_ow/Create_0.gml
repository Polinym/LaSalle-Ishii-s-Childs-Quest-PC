event_inherited();
title = "STRESS";
title_offset = 16;
scr_hud_ini(8, 4);
update = true;
txt_money = "";
pos_x = 144;
pos_y = 136;
depth = -300;
open_cmds = true;
jpn = obj_ram.jpn;

if (jpn)
{
	title = "FUSSDO";
	title_offset = 24;
	scr_hud_ini(11, 4);
	//pos_x += -48;
}