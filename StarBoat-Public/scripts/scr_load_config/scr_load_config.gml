function scr_load_config()
{
	with (obj_ram)
	{
		buf = buffer_load(config_file);
		buffer_seek(buf, buffer_seek_start, 0);
		jpn = scr_buffer_read();
		bonus = scr_buffer_read();
		new_ost = scr_buffer_read();
		buffer_delete(buf);
	}
}