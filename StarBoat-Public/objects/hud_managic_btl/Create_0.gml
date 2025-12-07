event_inherited();
title = "";
title_offset = 0;
scr_hud_ini(21, 4);
pos_x = 56;
pos_y = 136;
depth = -440;
names[7] = "";
john = obj_ram.john;
level = obj_ram.menu_level;
cost = obj_ram.managic_cost;
var tmp_names = obj_ram.managic_names;
var i = 0;
for (i = 0; i < level; i++)
{
	names[i] = tmp_names[i];
}
for (i = i; i < 8; i++)
{
	names[i] = "";	
}
x_pos = 0;
y_pos = 0;
held = false;
selected = false;
reading = false;