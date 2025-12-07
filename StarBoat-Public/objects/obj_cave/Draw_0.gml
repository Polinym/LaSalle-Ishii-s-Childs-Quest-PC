if (obj_ram.secret_alpha > 0)
{
	draw_set_alpha(obj_ram.secret_alpha*2);
	draw_sprite(sprite_index, image_index, x, y);
	draw_set_alpha(1);
}