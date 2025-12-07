event_inherited();
//scr_hud_ini(8, 4.5);
scr_hud_ini(5, 4.5);
//txt2 = "ATTALK##IGNORE##ESCAPE##MANAGIC## ITEM";
txt2 = "TALK##BEAR##FLEE##MNG##ITEM";
john = obj_ram.party[0];
level = scr_mng_level();
//pos_x = 0; pos_y = 128;
pos_x = 24; pos_y = 128;
pos = 0;
reading = false;
held = false;
cmd = "";
depth = -320;
line_btl_cmds = obj_ram.line_btl_cmds;
line_no_mng = obj_ram.line_no_mng;
line_no_items = obj_ram.line_no_items;
run_btl = true;

if (jpn) 
{
	txt2 = "Flatter##Endure##Escape##Managic##Tool";
	pos_x = 0;
	scr_hud_ini(8, 4.5);
}