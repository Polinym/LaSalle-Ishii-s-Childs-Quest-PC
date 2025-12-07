event_inherited();
title = "";
title_offset = 0;
scr_hud_ini(21, 4.5);
pos_x = 56;
pos_y = 136;
depth = -440;
names[7] = "";
john = obj_ram.john;
level = john.lvl;
var tmp_list;
switch (obj_ram.menu_mode)
{
	case 0: tmp_list = obj_ram.skits; break;
	case 1: tmp_list = obj_ram.songs; break;
}
var i = 0;
var tmp_act;
var blank = "";
for (i = 0; i < 7; i++)
{
	tmp_act = tmp_list[i];
	if (level >= tmp_act[1])
	{
		names[i] = tmp_act[0];
	}
	else
	{
		names[i] = blank;	
	}
}

if (obj_ram.menu_mode == 0)
{
	tmp_act = tmp_list[7];
	if (level >= tmp_act[1])
	{
		names[7] = tmp_act[0];
	}
	else
	{
		names[7] = blank;	
	}
}
else
{
	if (scr_flag(flag_GotSong))
	{
		names[7] = tmp_list[7][0];
	}
	else
	{
		names[7] = blank;
	}
}
x_pos = 0;
y_pos = 0;
held = false;
selected = false;