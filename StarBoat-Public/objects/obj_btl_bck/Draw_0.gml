if (sprite_index != -1)
{
	var tmp_shake = obj_ram.shake;
	var tmp_x = x+tmp_shake; var tmp_y = y+tmp_shake;
	draw_sprite(sprite_index, 0, tmp_x, tmp_y);
}