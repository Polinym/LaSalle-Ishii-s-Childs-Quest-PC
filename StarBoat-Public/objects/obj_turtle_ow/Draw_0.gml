if (obj_ram.secret_alpha > 0)
{
	draw_sprite_ext(spr_turtle, image_index, x, y, image_xscale, image_yscale, 0, c_white, obj_ram.secret_alpha);
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(spr_turtle, image_index, x, y, image_xscale, image_yscale, 0, c_green, obj_ram.secret_alpha);
	gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
}