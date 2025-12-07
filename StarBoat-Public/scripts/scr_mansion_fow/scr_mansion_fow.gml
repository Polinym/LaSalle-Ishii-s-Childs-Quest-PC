function scr_mansion_fow()
{
	if (mansion_index > -1)
	{
		lit = obj_ram.mansion[mansion_index];
		if (lit)
		{
			if (l_base != -1) {tilemap_tileset(l_base, tls_ghost);}
			if (l_decor != -1) {tilemap_tileset(l_base, tls_ghost);}
		}
		else
		{
			if (l_base != -1) {tilemap_tileset(l_base, tls_ghost_dark);}
			if (l_decor != -1) {tilemap_tileset(l_base, tls_ghost_dark);}
		}
	}
}