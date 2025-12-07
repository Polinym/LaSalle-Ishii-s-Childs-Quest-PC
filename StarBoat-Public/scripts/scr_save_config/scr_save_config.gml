function scr_save_config()
{
	with (obj_ram)
	{
		buf = buffer_create(4, buffer_fixed, 1);
		buffer_seek(buf, buffer_seek_start, 0);
		scr_buffer_write(jpn);
		scr_buffer_write(bonus);
		scr_buffer_write(new_ost);
		buffer_save(buf, config_file);
		buffer_delete(buf);
	}
}