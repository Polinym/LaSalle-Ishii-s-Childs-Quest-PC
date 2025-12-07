function scr_friends_move()
{
	for (var i = 0; i < friend_count; i++)
	{
	tmp_friend = friends[i];
	tmp_friend.state = "move";
	tmp_friend.dir = last_dir[i];
	tmp_friend.sprinting = sprinting;
	if (sprinting) {tmp_friend.movespeed = sprint_movespeed;}
	else {tmp_friend.movespeed = movespeed;}
	with (tmp_friend)
	{
	    step_pause = true;
	    next_x = x; next_y = y;
	    switch (dir)
	    {
	        case "right": 
	            next_x += 16;
	            if (image_index != 2) && (image_index != 3) {image_index = 2;} 
	            break
	        case "left": 
	            next_x += -16;
	            if (image_index != 6) && (image_index != 7) {image_index = 6;} 
	            break;
	        case "up": 
	            next_y += -16;
	            if (image_index != 4) && (image_index != 5) {image_index = 4;} 
	            break;
	        case "down": 
	            next_y += 16;
	            if (image_index != 0) && (image_index != 1) {image_index = 0;} 
	            break;
	    }
    
	}
	}
}