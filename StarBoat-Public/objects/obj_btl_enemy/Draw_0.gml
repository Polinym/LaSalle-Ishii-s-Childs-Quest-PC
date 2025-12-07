if (sprite_index != -1)
{
	if (flash)
	{
		draw_set_color(c_white);
		gpu_set_blendmode(bm_add);
		draw_sprite(sprite_index, 0, x, y);
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
	else
	{
		draw_self();	
	}
}