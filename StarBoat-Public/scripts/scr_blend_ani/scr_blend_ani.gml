function scr_blend_ani()
{
	if (image_blend != c_white)
	{
		var c;
		for (var i = 0; i < 3; i++)
		{
			c = script_execute(base_cmds[i], image_blend);
			if (c < 255) {c = clamp(c + blend_speed, 0, 255);}
			blend[i] = c;
		}
		image_blend = make_color_rgb(blend[0], blend[1], blend[2]);
	}
}