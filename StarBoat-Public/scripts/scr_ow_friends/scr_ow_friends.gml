function scr_ow_friends()
{
	friend_count = 0;
	friends[3] = -1;
	for (var i = 1; i < 4; i++)
	{
	    if (obj_ram.party[i] != -1) and (can_menu)
	    {
	        friends[friend_count] = icd(x,y, -4, obj_player_ally);
	        friends[friend_count].char = obj_ram.party[i];
	        with (friends[friend_count]) {scr_ow_spr_update(char);}
	        friend_count++;
	    }
	}
}