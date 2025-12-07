/// @description scr_plr_animate()
function scr_plr_animate() 
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_frame = not ani_frame;
		ani_count = 0;
		for (var i = 0; i < friend_count; i++)
		{
			var tmp_friend = friends[i];
			tmp_friend.ani_frame = ani_frame;
			with (tmp_friend)
			{
				image_index = (scr_dir_index(dir)*2) + ani_frame;
			}
		}
	}
	image_index = (scr_dir_index(dir)*2) + ani_frame;
}
