function scr_dmg_master(arg_amt)
{
	if (scr_suit(suit_Master)) {return round(arg_amt*0.9);}
	else {return arg_amt;}
}