function scr_player_draw()
{
	if ( (l_seablock != -1) and place_meeting(x, y, l_seablock) and has_boats )
	{
		draw_sprite_part(sprite_index, image_index, 0, 0, 16, 8, x, y);
		draw_sprite(spr_boats, image_index, x, y);
	}
	else
	{
		draw_self();
	}
}