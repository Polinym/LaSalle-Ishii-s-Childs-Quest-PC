function scr_dmg_master2(arg_amt, arg_boost)
{
	if (scr_suit(suit_Master)) 
	{
		return round(arg_amt*(1+(john.hp/john.max_hp)));
	}
	else {return arg_amt;}
}