function scr_set_respawn()
{
	with (obj_ram)
	{
		last_room = room;
		last_x = obj_player.x;
		last_y = obj_player.y;
		respawn = true;
	}
}