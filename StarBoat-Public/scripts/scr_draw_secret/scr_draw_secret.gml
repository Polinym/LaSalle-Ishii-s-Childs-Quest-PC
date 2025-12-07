function scr_draw_secret(arg_sprite, arg_index)
{
	if (obj_ram.secret_alpha > 0)
	{
		draw_sprite_ext(arg_sprite, arg_index, x, y, image_xscale, image_yscale, 0, c_white, obj_ram.secret_alpha);
	}
}