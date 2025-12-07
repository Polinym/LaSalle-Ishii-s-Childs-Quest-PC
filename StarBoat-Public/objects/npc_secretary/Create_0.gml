event_inherited();
var tmp_line = 0;
if (not bonus) {instance_destroy();}

if (not obj_ram.towns[town_Arbony][3])
{
	tmp_line = 120;
}
else if (not scr_flag(item_HotDog))
{
	tmp_line = 121;
}
else if (not obj_ram.cities[city_Botson][3])
{
	tmp_line = 122;
}
else if (not obj_ram.towns[town_Freattle][3])
{
	tmp_line = 123;
}
else if (not scr_has_all_paints())
{
	tmp_line = 124;
}
else if (not scr_flag(item_MagicPaint))
{
	tmp_line = 125;
}
else if (not scr_flag(item_Boats))
{
	tmp_line = 126;
}
else if (not scr_equipped("mic", mic_Stars))
{
	tmp_line = 127;
}
else if (not scr_equipped("shoes", shoes_Stars))
{
	tmp_line = 128;
}
else if (not scr_equipped("dress", dress_Stars))
{
	tmp_line = 129;
}
else if (not scr_flag(flag_Endgame))
{
	tmp_line = 130;
}
else
{
	tmp_line = 131;
}
scr_npc_set(tmp_line, LEFT);