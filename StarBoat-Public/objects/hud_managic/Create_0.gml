event_inherited();
title = "";
title_offset = 0;
scr_hud_ini(21, 4);
pos_x = 40;
pos_y = 136;
depth = -320;
names[7] = "";
level = obj_ram.menu_level;
john = obj_ram.john;
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
reading = true;
mode = 0;
cmd = "";
towns = obj_ram.towns;
cities = obj_ram.cities;
town_pool = -1;