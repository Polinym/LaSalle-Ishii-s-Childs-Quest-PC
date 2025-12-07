event_inherited();
bck = BCK_OFFICE3;
if (obj_ram.halls[6][1])
{
	line = 161;
}
else
{
	line = 158;
	var tmp_equip = obj_ram.john.equip;
	if (tmp_equip[0] == mic_Stars)
	and (tmp_equip[1] == dress_Stars)
	and (tmp_equip[2] == shoes_Stars)
	{
		line = 159;
	}
}
port = spr_port_hall;
ui = true;
hall = 6;